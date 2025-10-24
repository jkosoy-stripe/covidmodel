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
    // Exclude public/json from being bundled
    if (isServer) {
      config.externals = config.externals || [];
      config.externals.push({
        'public/json': 'commonjs public/json',
      });
    }
    // Uncomment to profile React in production:
    // Object.assign(config.resolve.alias, {
    //   'react-dom$': 'react-dom/profiling',
    //   'scheduler/tracing': 'scheduler/tracing-profiling',
    // });
    return config;
  },
});
