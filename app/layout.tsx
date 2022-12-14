// Bootstrap 
import 'bootstrap/dist/css/bootstrap.min.css'

// Material Design Bootstrap
import 'mdb-react-ui-kit/dist/css/mdb.min.css'
import '@fortawesome/fontawesome-free/css/all.min.css'

import '../styles/global.scss'

import Head from 'next/head'
import {
    Header,
    Footer,
    ClientLoads
} from '../components';


export default function RootLayout({
    // Layouts must accept a children prop.
    // This will be populated with nested layouts or pages
    children,
}: {
    children: React.ReactNode;
}) {
    return (
        <html lang="en">
            <body>
                <Head>
                    <title>Create Next App</title>
                    <meta name="description" content="Generated by create next app" />
                    <link rel="icon" href="/favicon.ico" />
                </Head>

                <Header />
                <>{children}</>
                <Footer />
                <ClientLoads />
            </body>
        </html >
    );
}
