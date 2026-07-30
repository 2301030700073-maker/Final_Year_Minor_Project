package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.util.Timer;
import defpackage.AI;
import defpackage.C0113Au;
import defpackage.C0135Bu;
import defpackage.C0806cM;
import defpackage.C3174jo;
import defpackage.C3233ko;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: classes3.dex */
public class FirebasePerfUrlConnection {
    @Keep
    public static Object getContent(URL url) {
        C0806cM c0806cM = new C0806cM(url, 6);
        AI ai = AI.f54do;
        Timer timer = new Timer();
        timer.m6127for();
        long j = timer.f11971do;
        C0113Au c0113Au = new C0113Au(ai);
        try {
            URLConnection openConnection = ((URL) c0806cM.f8526do).openConnection();
            return openConnection instanceof HttpsURLConnection ? new C3233ko((HttpsURLConnection) openConnection, timer, c0113Au).getContent() : openConnection instanceof HttpURLConnection ? new C3174jo((HttpURLConnection) openConnection, timer, c0113Au).getContent() : openConnection.getContent();
        } catch (IOException e) {
            c0113Au.m109catch(j);
            c0113Au.m116super(timer.m6126do());
            c0113Au.m117throw(c0806cM.toString());
            C0135Bu.m237for(c0113Au);
            throw e;
        }
    }

    @Keep
    public static Object instrument(Object obj) {
        return obj instanceof HttpsURLConnection ? new C3233ko((HttpsURLConnection) obj, new Timer(), new C0113Au(AI.f54do)) : obj instanceof HttpURLConnection ? new C3174jo((HttpURLConnection) obj, new Timer(), new C0113Au(AI.f54do)) : obj;
    }

    @Keep
    public static InputStream openStream(URL url) {
        C0806cM c0806cM = new C0806cM(url, 6);
        AI ai = AI.f54do;
        Timer timer = new Timer();
        if (!ai.f66do.get()) {
            return ((URL) c0806cM.f8526do).openConnection().getInputStream();
        }
        timer.m6127for();
        long j = timer.f11971do;
        C0113Au c0113Au = new C0113Au(ai);
        try {
            URLConnection openConnection = ((URL) c0806cM.f8526do).openConnection();
            return openConnection instanceof HttpsURLConnection ? new C3233ko((HttpsURLConnection) openConnection, timer, c0113Au).getInputStream() : openConnection instanceof HttpURLConnection ? new C3174jo((HttpURLConnection) openConnection, timer, c0113Au).getInputStream() : openConnection.getInputStream();
        } catch (IOException e) {
            c0113Au.m109catch(j);
            c0113Au.m116super(timer.m6126do());
            c0113Au.m117throw(c0806cM.toString());
            C0135Bu.m237for(c0113Au);
            throw e;
        }
    }

    @Keep
    public static Object getContent(URL url, Class[] clsArr) {
        C0806cM c0806cM = new C0806cM(url, 6);
        AI ai = AI.f54do;
        Timer timer = new Timer();
        timer.m6127for();
        long j = timer.f11971do;
        C0113Au c0113Au = new C0113Au(ai);
        try {
            URLConnection openConnection = ((URL) c0806cM.f8526do).openConnection();
            if (openConnection instanceof HttpsURLConnection) {
                return new C3233ko((HttpsURLConnection) openConnection, timer, c0113Au).getContent(clsArr);
            }
            if (openConnection instanceof HttpURLConnection) {
                return new C3174jo((HttpURLConnection) openConnection, timer, c0113Au).getContent(clsArr);
            }
            return openConnection.getContent(clsArr);
        } catch (IOException e) {
            c0113Au.m109catch(j);
            c0113Au.m116super(timer.m6126do());
            c0113Au.m117throw(c0806cM.toString());
            C0135Bu.m237for(c0113Au);
            throw e;
        }
    }
}
