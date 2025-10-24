const withMDX = require('@next/mdx')({
  extension: /\.mdx?$/,
});
module.exports = withMDX({
  // reactStrictMode: true,
  // experimental: {
  //   reactMode: 'concurrent',
  // },
  pageExtensions: ['js', 'jsx', 'md', 'mdx'],
  target: 'serverless',
  webpack: (config, {isServer}) => {
    if (isServer) {
      // Externalize Prisma to avoid webpack parsing issues
      config.externals = config.externals || [];
      config.externals.push('@prisma/client', '.prisma/client');
    }
    // Uncomment to profile React in production:
    // Object.assign(config.resolve.alias, {
    //   'react-dom$': 'react-dom/profiling',
    //   'scheduler/tracing': 'scheduler/tracing-profiling',
    // });
    return config;
  },
});
