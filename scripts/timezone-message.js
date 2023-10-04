const moment = require('moment-timezone')

const args = process.argv.slice(2);

const ROOT_TIMEZONE = 'America/Toronto';

const LOCATIONS = [
  {
    timezone: 'America/Los_Angeles',
    flag: '🇺🇸'
  },
  {
    timezone: 'America/Chicago',
    flag: '🇺🇸'
  },
  {
    timezone: 'America/Toronto',
    flag: '🇨🇦'
  },
  {
    timezone: 'America/Bogota',
    flag: '🇨🇴'
  },
  {
    timezone: 'America/Argentina/Buenos_Aires',
    flag: '🇦🇷'
  },
  {
    timezone: 'Europe/Berlin',
    flag: '🇩🇪'
  },
  {
    timezone: 'Asia/Tokyo',
    flag: '🇯🇵'
  },
];

const FORMAT = 'hh:mm A';

const main = () => {
  const message = args[0] || ''

  const root = moment()
    .tz(ROOT_TIMEZONE);

  if (args[1]) {
    const inputTime = args[1];
    const inputAmPm = args[2] || 'pm';

    let hour = Number(inputTime.split(":")[0]);

    if (hour < 12 && inputAmPm.toLowerCase() === 'pm') {
      hour += 12;
    }

    const minute = Number(inputTime.split(":")[1] || 0);

    root
      .hour(hour)
      .minute(minute);
  }

  let output = ''

  output += `${message}`;

  LOCATIONS.forEach(({ timezone, flag }) => {
    let timeString = root.clone().tz(timezone).format(FORMAT);
    const city     = timezone.split('/')[timezone.split('/').length - 1].replace('_', ' ');

    if (timeString[0] === '0') {
      timeString = ' ' + timeString.substring(1);
    }

    output += `\n${timeString} → ${flag}  ${city}`;
  })

  console.log(output);
}

if (args.length > 0) {
  main();
} else {
  console.log(`Usage: '[MESSAGE]' (TIME) (AM/PM)`);
}
