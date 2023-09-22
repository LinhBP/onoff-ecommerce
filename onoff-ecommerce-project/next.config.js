/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  images: {
    domains: ['static.nike.com'],
  },
  distDir: "build",
}

module.exports = nextConfig
