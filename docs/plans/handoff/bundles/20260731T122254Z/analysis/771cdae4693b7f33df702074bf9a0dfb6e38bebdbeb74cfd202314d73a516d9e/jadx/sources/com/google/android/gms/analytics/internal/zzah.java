package com.google.android.gms.analytics.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes.dex */
class zzah extends zzd {
    private static final byte[] zzMs = "\n".getBytes();
    private final String zzFP;
    private final zzaj zzMr;

    private class zza {
        private int zzMt;
        private ByteArrayOutputStream zzMu = new ByteArrayOutputStream();

        public zza() {
        }

        public byte[] getPayload() {
            return this.zzMu.toByteArray();
        }

        public boolean zzj(zzab zzabVar) {
            com.google.android.gms.common.internal.zzu.zzu(zzabVar);
            if (this.zzMt + 1 > zzah.this.zzhR().zzji()) {
                return false;
            }
            String zza = zzah.this.zza(zzabVar, false);
            if (zza == null) {
                zzah.this.zzhQ().zza(zzabVar, "Error formatting hit");
                return true;
            }
            byte[] bytes = zza.getBytes();
            int length = bytes.length;
            if (length > zzah.this.zzhR().zzja()) {
                zzah.this.zzhQ().zza(zzabVar, "Hit size exceeds the maximum size limit");
                return true;
            }
            if (this.zzMu.size() > 0) {
                length++;
            }
            if (this.zzMu.size() + length > zzah.this.zzhR().zzjc()) {
                return false;
            }
            try {
                if (this.zzMu.size() > 0) {
                    this.zzMu.write(zzah.zzMs);
                }
                this.zzMu.write(bytes);
                this.zzMt++;
                return true;
            } catch (IOException e) {
                zzah.this.zze("Failed to write payload when batching hits", e);
                return true;
            }
        }

        public int zzkj() {
            return this.zzMt;
        }
    }

    zzah(zzf zzfVar) {
        super(zzfVar);
        this.zzFP = zza("GoogleAnalytics", zze.VERSION, Build.VERSION.RELEASE, zzam.zza(Locale.getDefault()), Build.MODEL, Build.ID);
        this.zzMr = new zzaj(zzfVar.zzhP());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.analytics.internal.zzah] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, java.net.URL] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.net.HttpURLConnection] */
    private int zza(URL url, byte[] bArr) {
        OutputStream outputStream;
        com.google.android.gms.common.internal.zzu.zzu(url);
        com.google.android.gms.common.internal.zzu.zzu(bArr);
        zzb("POST bytes, url", Integer.valueOf(bArr.length), url);
        if (zzhZ()) {
            zza("Post payload\n", new String(bArr));
        }
        OutputStream outputStream2 = null;
        try {
            try {
                url = zzc(url);
                try {
                    url.setDoOutput(true);
                    url.setFixedLengthStreamingMode(bArr.length);
                    url.connect();
                    outputStream = url.getOutputStream();
                } catch (IOException e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                outputStream.write(bArr);
                zzb(url);
                int responseCode = url.getResponseCode();
                if (responseCode == 200) {
                    zzhl().zzhL();
                }
                zzb("POST status", Integer.valueOf(responseCode));
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e2) {
                        zze("Error closing http post connection output stream", e2);
                    }
                }
                if (url != 0) {
                    url.disconnect();
                }
                return responseCode;
            } catch (IOException e3) {
                e = e3;
                outputStream2 = outputStream;
                zzd("Network POST connection error", e);
                if (outputStream2 != null) {
                    try {
                        outputStream2.close();
                    } catch (IOException e4) {
                        zze("Error closing http post connection output stream", e4);
                    }
                }
                if (url != 0) {
                    url.disconnect();
                }
                return 0;
            } catch (Throwable th2) {
                th = th2;
                outputStream2 = outputStream;
                if (outputStream2 != null) {
                    try {
                        outputStream2.close();
                    } catch (IOException e5) {
                        zze("Error closing http post connection output stream", e5);
                    }
                }
                if (url == 0) {
                    throw th;
                }
                url.disconnect();
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            url = 0;
        } catch (Throwable th3) {
            th = th3;
            url = 0;
        }
    }

    private static String zza(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", str, str2, str3, str4, str5, str6);
    }

    private void zza(StringBuilder sb, String str, String str2) throws UnsupportedEncodingException {
        if (sb.length() != 0) {
            sb.append('&');
        }
        sb.append(URLEncoder.encode(str, "UTF-8"));
        sb.append('=');
        sb.append(URLEncoder.encode(str2, "UTF-8"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004c  */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, java.net.URL] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int zzb(java.net.URL r5) {
        /*
            r4 = this;
            com.google.android.gms.common.internal.zzu.zzu(r5)
            java.lang.String r0 = "GET request"
            r4.zzb(r0, r5)
            r0 = 0
            java.net.HttpURLConnection r5 = r4.zzc(r5)     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L3a
            r5.connect()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r4.zzb(r5)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            int r0 = r5.getResponseCode()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r1 = 200(0xc8, float:2.8E-43)
            if (r0 != r1) goto L22
            com.google.android.gms.analytics.internal.zzb r1 = r4.zzhl()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r1.zzhL()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
        L22:
            java.lang.String r1 = "GET status"
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r4.zzb(r1, r2)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            if (r5 == 0) goto L30
            r5.disconnect()
        L30:
            return r0
        L31:
            r0 = move-exception
            goto L4a
        L33:
            r0 = move-exception
            goto L3e
        L35:
            r5 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
            goto L4a
        L3a:
            r5 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
        L3e:
            java.lang.String r1 = "Network GET connection error"
            r4.zzd(r1, r0)     // Catch: java.lang.Throwable -> L31
            r0 = 0
            if (r5 == 0) goto L49
            r5.disconnect()
        L49:
            return r0
        L4a:
            if (r5 == 0) goto L4f
            r5.disconnect()
        L4f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzah.zzb(java.net.URL):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int zzb(java.net.URL r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzah.zzb(java.net.URL, byte[]):int");
    }

    private URL zzb(zzab zzabVar, String str) {
        StringBuilder sb;
        String zzjl;
        if (zzabVar.zzjY()) {
            sb = new StringBuilder();
            zzjl = zzhR().zzjk();
        } else {
            sb = new StringBuilder();
            zzjl = zzhR().zzjl();
        }
        sb.append(zzjl);
        sb.append(zzhR().zzjm());
        sb.append("?");
        sb.append(str);
        try {
            return new URL(sb.toString());
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private void zzb(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
            try {
                do {
                } while (inputStream.read(new byte[1024]) > 0);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        zze("Error closing http connection input stream", e);
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        zze("Error closing http connection input stream", e2);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    private boolean zzg(zzab zzabVar) {
        String str;
        zzaf zzhQ;
        String str2;
        com.google.android.gms.common.internal.zzu.zzu(zzabVar);
        String zza2 = zza(zzabVar, !zzabVar.zzjY());
        if (zza2 != null) {
            if (zza2.length() <= zzhR().zziZ()) {
                URL zzb = zzb(zzabVar, zza2);
                if (zzb != null) {
                    return zzb(zzb) == 200;
                }
                str = "Failed to build collect GET endpoint url";
            } else {
                String zza3 = zza(zzabVar, false);
                if (zza3 == null) {
                    zzhQ = zzhQ();
                    str2 = "Error formatting hit for POST upload";
                } else {
                    byte[] bytes = zza3.getBytes();
                    if (bytes.length > zzhR().zzjb()) {
                        zzhQ = zzhQ();
                        str2 = "Hit payload exceeds size limit";
                    } else {
                        URL zzh = zzh(zzabVar);
                        if (zzh != null) {
                            return zza(zzh, bytes) == 200;
                        }
                        str = "Failed to build collect POST endpoint url";
                    }
                }
            }
            zzaX(str);
            return false;
        }
        zzhQ = zzhQ();
        str2 = "Error formatting hit for upload";
        zzhQ.zza(zzabVar, str2);
        return true;
    }

    private static byte[] zzg(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private URL zzh(zzab zzabVar) {
        StringBuilder sb;
        String zzjl;
        if (zzabVar.zzjY()) {
            sb = new StringBuilder();
            zzjl = zzhR().zzjk();
        } else {
            sb = new StringBuilder();
            zzjl = zzhR().zzjl();
        }
        sb.append(zzjl);
        sb.append(zzhR().zzjm());
        try {
            return new URL(sb.toString());
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    private String zzi(zzab zzabVar) {
        return String.valueOf(zzabVar.zzjV());
    }

    private URL zzkh() {
        try {
            return new URL(zzhR().zzjk() + zzhR().zzjn());
        } catch (MalformedURLException e) {
            zze("Error trying to parse the hardcoded host url", e);
            return null;
        }
    }

    String zza(zzab zzabVar, boolean z) {
        com.google.android.gms.common.internal.zzu.zzu(zzabVar);
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : zzabVar.zzn().entrySet()) {
                String key = entry.getKey();
                if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key) && !"z".equals(key) && !"_gmsv".equals(key)) {
                    zza(sb, key, entry.getValue());
                }
            }
            zza(sb, "ht", String.valueOf(zzabVar.zzjW()));
            zza(sb, "qt", String.valueOf(zzhP().currentTimeMillis() - zzabVar.zzjW()));
            if (zzhR().zziW()) {
                zza(sb, "_gmsv", zze.VERSION);
            }
            if (z) {
                long zzjZ = zzabVar.zzjZ();
                zza(sb, "z", zzjZ != 0 ? String.valueOf(zzjZ) : zzi(zzabVar));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            zze("Failed to encode name or value", e);
            return null;
        }
    }

    List<Long> zza(List<zzab> list, boolean z) {
        com.google.android.gms.common.internal.zzu.zzV(!list.isEmpty());
        zza("Uploading batched hits. compression, count", Boolean.valueOf(z), Integer.valueOf(list.size()));
        zza zzaVar = new zza();
        ArrayList arrayList = new ArrayList();
        for (zzab zzabVar : list) {
            if (!zzaVar.zzj(zzabVar)) {
                break;
            }
            arrayList.add(Long.valueOf(zzabVar.zzjV()));
        }
        if (zzaVar.zzkj() == 0) {
            return arrayList;
        }
        URL zzkh = zzkh();
        if (zzkh == null) {
            zzaX("Failed to build batching endpoint url");
            return Collections.emptyList();
        }
        int zzb = z ? zzb(zzkh, zzaVar.getPayload()) : zza(zzkh, zzaVar.getPayload());
        if (200 == zzb) {
            zza("Batched upload completed. Hits batched", Integer.valueOf(zzaVar.zzkj()));
            return arrayList;
        }
        zza("Network error uploading hits. status code", Integer.valueOf(zzb));
        if (zzhR().zzjq().contains(Integer.valueOf(zzb))) {
            zzaW("Server instructed the client to stop batching");
            this.zzMr.start();
        }
        return Collections.emptyList();
    }

    HttpURLConnection zzc(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (!(openConnection instanceof HttpURLConnection)) {
            throw new IOException("Failed to obtain http connection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setConnectTimeout(zzhR().zzjz());
        httpURLConnection.setReadTimeout(zzhR().zzjA());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestProperty("User-Agent", this.zzFP);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    public List<Long> zzf(List<zzab> list) {
        boolean z;
        zzhO();
        zzia();
        com.google.android.gms.common.internal.zzu.zzu(list);
        boolean z2 = false;
        if (zzhR().zzjq().isEmpty() || !this.zzMr.zzv(zzhR().zzjj() * 1000)) {
            z = false;
        } else {
            z = zzhR().zzjo() != zzm.NONE;
            if (zzhR().zzjp() == zzo.GZIP) {
                z2 = true;
            }
        }
        return z ? zza(list, z2) : zzg(list);
    }

    List<Long> zzg(List<zzab> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (zzab zzabVar : list) {
            if (!zzg(zzabVar)) {
                return arrayList;
            }
            arrayList.add(Long.valueOf(zzabVar.zzjV()));
            if (arrayList.size() >= zzhR().zzjh()) {
                break;
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzhn() {
        zza("Network initialized. User agent", this.zzFP);
    }

    public boolean zzkg() {
        NetworkInfo networkInfo;
        zzhO();
        zzia();
        try {
            networkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        zzaT("No network connectivity");
        return false;
    }
}
