package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Logger;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import defpackage.AsyncTaskC0302Jl;
import defpackage.C0173Do;
import defpackage.C0280Il;
import defpackage.C0324Kl;
import defpackage.C0346Ll;
import defpackage.C3344mh;
import defpackage.C3548q7;
import defpackage.C3756th;
import defpackage.Creturn;
import defpackage.EnumC0171Dm;
import defpackage.EnumC0658Zq;
import defpackage.Iz;
import defpackage.J2;
import defpackage.RunnableC0258Hl;
import defpackage.Ux;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class GraphRequest {

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f9270do;

    /* renamed from: for, reason: not valid java name */
    public static final String f9271for;

    /* renamed from: new, reason: not valid java name */
    public static volatile String f9272new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EnumC0171Dm f9273do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Bundle f9274do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccessToken f9275do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f9276do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object f9277do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9278do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public JSONObject f9279do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9280do;

    /* renamed from: if, reason: not valid java name */
    public final String f9281if;

    /* renamed from: com.facebook.GraphRequest$case, reason: invalid class name */
    public static final class Ccase implements Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Logger f9284do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final OutputStream f9285do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f9286do = true;

        /* renamed from: if, reason: not valid java name */
        public final boolean f9287if;

        public Ccase(OutputStream outputStream, Logger logger, boolean z) {
            this.f9285do = outputStream;
            this.f9284do = logger;
            this.f9287if = z;
        }

        /* renamed from: case, reason: not valid java name */
        public final void m5273case(String str, Object... objArr) {
            m5277if(str, Arrays.copyOf(objArr, objArr.length));
            if (this.f9287if) {
                return;
            }
            m5277if("\r\n", new Object[0]);
        }

        @Override // com.facebook.GraphRequest.Cnew
        /* renamed from: do */
        public final void mo964do(String str, String str2) {
            C0173Do.m401try(str, "key");
            C0173Do.m401try(str2, "value");
            m5275for(str, null, null);
            m5273case("%s", str2);
            m5276goto();
            Logger logger = this.f9284do;
            if (logger == null) {
                return;
            }
            logger.appendKeyValue(C0173Do.m397goto(str, "    "), str2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: else, reason: not valid java name */
        public final void m5274else(String str, Object obj, GraphRequest graphRequest) {
            C0173Do.m401try(str, "key");
            OutputStream outputStream = this.f9285do;
            if (outputStream instanceof Iz) {
                ((Iz) outputStream).mo996do(graphRequest);
            }
            String str2 = GraphRequest.f9271for;
            if (Cfor.m5281case(obj)) {
                mo964do(str, Cfor.m5285do(obj));
                return;
            }
            boolean z = obj instanceof Bitmap;
            Logger logger = this.f9284do;
            if (z) {
                Bitmap bitmap = (Bitmap) obj;
                C0173Do.m401try(bitmap, "bitmap");
                m5275for(str, str, "image/png");
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream);
                m5273case(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new Object[0]);
                m5276goto();
                if (logger == null) {
                    return;
                }
                logger.appendKeyValue(C0173Do.m397goto(str, "    "), "<Image>");
                return;
            }
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                C0173Do.m401try(bArr, "bytes");
                m5275for(str, str, "content/unknown");
                outputStream.write(bArr);
                m5273case(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new Object[0]);
                m5276goto();
                if (logger == null) {
                    return;
                }
                String m397goto = C0173Do.m397goto(str, "    ");
                String format = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(bArr.length)}, 1));
                C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                logger.appendKeyValue(m397goto, format);
                return;
            }
            if (obj instanceof Uri) {
                m5278new((Uri) obj, str, null);
                return;
            }
            if (obj instanceof ParcelFileDescriptor) {
                m5279try(str, (ParcelFileDescriptor) obj, null);
                return;
            }
            if (!(obj instanceof ParcelableResourceWithMimeType)) {
                throw new IllegalArgumentException("value is not a supported type.");
            }
            ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
            RESOURCE resource = parcelableResourceWithMimeType.f9283do;
            boolean z2 = resource instanceof ParcelFileDescriptor;
            String str3 = parcelableResourceWithMimeType.f9282break;
            if (z2) {
                m5279try(str, (ParcelFileDescriptor) resource, str3);
            } else {
                if (!(resource instanceof Uri)) {
                    throw new IllegalArgumentException("value is not a supported type.");
                }
                m5278new((Uri) resource, str, str3);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final void m5275for(String str, String str2, String str3) {
            if (this.f9287if) {
                byte[] bytes = defpackage.Cif.m6913else(new Object[]{str}, 1, "%s=", "java.lang.String.format(format, *args)").getBytes(C3548q7.f15043do);
                C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
                this.f9285do.write(bytes);
                return;
            }
            m5277if("Content-Disposition: form-data; name=\"%s\"", str);
            if (str2 != null) {
                m5277if("; filename=\"%s\"", str2);
            }
            m5273case(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new Object[0]);
            if (str3 != null) {
                m5273case("%s: %s", "Content-Type", str3);
            }
            m5273case(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new Object[0]);
        }

        /* renamed from: goto, reason: not valid java name */
        public final void m5276goto() {
            if (!this.f9287if) {
                m5273case("--%s", GraphRequest.f9271for);
                return;
            }
            byte[] bytes = "&".getBytes(C3548q7.f15043do);
            C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
            this.f9285do.write(bytes);
        }

        /* renamed from: if, reason: not valid java name */
        public final void m5277if(String str, Object... objArr) {
            C0173Do.m401try(objArr, "args");
            boolean z = this.f9287if;
            OutputStream outputStream = this.f9285do;
            if (z) {
                Locale locale = Locale.US;
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                String format = String.format(locale, str, Arrays.copyOf(copyOf, copyOf.length));
                C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                String encode = URLEncoder.encode(format, "UTF-8");
                C0173Do.m399new(encode, "encode(String.format(Locale.US, format, *args), \"UTF-8\")");
                byte[] bytes = encode.getBytes(C3548q7.f15043do);
                C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes);
                return;
            }
            if (this.f9286do) {
                Charset charset = C3548q7.f15043do;
                byte[] bytes2 = "--".getBytes(charset);
                C0173Do.m399new(bytes2, "(this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes2);
                String str2 = GraphRequest.f9271for;
                if (str2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
                byte[] bytes3 = str2.getBytes(charset);
                C0173Do.m399new(bytes3, "(this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes3);
                byte[] bytes4 = "\r\n".getBytes(charset);
                C0173Do.m399new(bytes4, "(this as java.lang.String).getBytes(charset)");
                outputStream.write(bytes4);
                this.f9286do = false;
            }
            Object[] copyOf2 = Arrays.copyOf(objArr, objArr.length);
            byte[] bytes5 = defpackage.Cif.m6913else(copyOf2, copyOf2.length, str, "java.lang.String.format(format, *args)").getBytes(C3548q7.f15043do);
            C0173Do.m399new(bytes5, "(this as java.lang.String).getBytes(charset)");
            outputStream.write(bytes5);
        }

        /* renamed from: new, reason: not valid java name */
        public final void m5278new(Uri uri, String str, String str2) {
            int copyAndCloseInputStream;
            C0173Do.m401try(str, "key");
            C0173Do.m401try(uri, "contentUri");
            if (str2 == null) {
                str2 = "content/unknown";
            }
            m5275for(str, str, str2);
            OutputStream outputStream = this.f9285do;
            if (outputStream instanceof Ux) {
                ((Ux) outputStream).m2486if(Utility.getContentSize(uri));
                copyAndCloseInputStream = 0;
            } else {
                InputStream openInputStream = C3756th.m8299do().getContentResolver().openInputStream(uri);
                Utility utility = Utility.INSTANCE;
                copyAndCloseInputStream = Utility.copyAndCloseInputStream(openInputStream, outputStream) + 0;
            }
            m5273case(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new Object[0]);
            m5276goto();
            Logger logger = this.f9284do;
            if (logger == null) {
                return;
            }
            String m397goto = C0173Do.m397goto(str, "    ");
            String format = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(copyAndCloseInputStream)}, 1));
            C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
            logger.appendKeyValue(m397goto, format);
        }

        /* renamed from: try, reason: not valid java name */
        public final void m5279try(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) {
            int copyAndCloseInputStream;
            C0173Do.m401try(str, "key");
            C0173Do.m401try(parcelFileDescriptor, "descriptor");
            if (str2 == null) {
                str2 = "content/unknown";
            }
            m5275for(str, str, str2);
            OutputStream outputStream = this.f9285do;
            if (outputStream instanceof Ux) {
                ((Ux) outputStream).m2486if(parcelFileDescriptor.getStatSize());
                copyAndCloseInputStream = 0;
            } else {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                Utility utility = Utility.INSTANCE;
                copyAndCloseInputStream = Utility.copyAndCloseInputStream(autoCloseInputStream, outputStream) + 0;
            }
            m5273case(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new Object[0]);
            m5276goto();
            Logger logger = this.f9284do;
            if (logger == null) {
                return;
            }
            String m397goto = C0173Do.m397goto(str, "    ");
            String format = String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(copyAndCloseInputStream)}, 1));
            C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
            logger.appendKeyValue(m397goto, format);
        }
    }

    /* renamed from: com.facebook.GraphRequest$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final GraphRequest f9288do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f9289do;

        public Cdo(GraphRequest graphRequest, Object obj) {
            this.f9288do = graphRequest;
            this.f9289do = obj;
        }
    }

    /* renamed from: com.facebook.GraphRequest$for, reason: invalid class name */
    public static final class Cfor {
        /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
        /* renamed from: break, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m5280break(org.json.JSONObject r7, java.lang.String r8, com.facebook.GraphRequest.Cnew r9) {
            /*
                java.util.regex.Pattern r0 = com.facebook.GraphRequest.f9270do
                java.util.regex.Matcher r0 = r0.matcher(r8)
                boolean r1 = r0.matches()
                r2 = 1
                if (r1 == 0) goto L17
                java.lang.String r0 = r0.group(r2)
                java.lang.String r1 = "matcher.group(1)"
                defpackage.C0173Do.m399new(r0, r1)
                goto L18
            L17:
                r0 = r8
            L18:
                java.lang.String r1 = "me/"
                boolean r1 = defpackage.BF.j(r0, r1)
                r3 = 0
                if (r1 != 0) goto L2c
                java.lang.String r1 = "/me/"
                boolean r0 = defpackage.BF.j(r0, r1)
                if (r0 == 0) goto L2a
                goto L2c
            L2a:
                r0 = 0
                goto L2d
            L2c:
                r0 = 1
            L2d:
                if (r0 == 0) goto L46
                java.lang.String r0 = ":"
                r1 = 6
                int r0 = defpackage.EF.o(r8, r0, r3, r3, r1)
                java.lang.String r4 = "?"
                int r8 = defpackage.EF.o(r8, r4, r3, r3, r1)
                r1 = 3
                if (r0 <= r1) goto L46
                r1 = -1
                if (r8 == r1) goto L44
                if (r0 >= r8) goto L46
            L44:
                r8 = 1
                goto L47
            L46:
                r8 = 0
            L47:
                java.util.Iterator r0 = r7.keys()
            L4b:
                boolean r1 = r0.hasNext()
                if (r1 == 0) goto L76
                java.lang.Object r1 = r0.next()
                java.lang.String r1 = (java.lang.String) r1
                java.lang.Object r4 = r7.opt(r1)
                if (r8 == 0) goto L67
                java.lang.String r5 = "image"
                boolean r5 = defpackage.BF.e(r1, r5)
                if (r5 == 0) goto L67
                r5 = 1
                goto L68
            L67:
                r5 = 0
            L68:
                java.lang.String r6 = "key"
                defpackage.C0173Do.m399new(r1, r6)
                java.lang.String r6 = "value"
                defpackage.C0173Do.m399new(r4, r6)
                m5282catch(r1, r4, r9, r5)
                goto L4b
            L76:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.Cfor.m5280break(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$new):void");
        }

        /* renamed from: case, reason: not valid java name */
        public static boolean m5281case(Object obj) {
            return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
        }

        /* renamed from: catch, reason: not valid java name */
        public static void m5282catch(String str, Object obj, Cnew cnew, boolean z) {
            Class<?> cls = obj.getClass();
            if (JSONObject.class.isAssignableFrom(cls)) {
                JSONObject jSONObject = (JSONObject) obj;
                if (z) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String m6913else = defpackage.Cif.m6913else(new Object[]{str, next}, 2, "%s[%s]", "java.lang.String.format(format, *args)");
                        Object opt = jSONObject.opt(next);
                        C0173Do.m399new(opt, "jsonObject.opt(propertyName)");
                        m5282catch(m6913else, opt, cnew, z);
                    }
                    return;
                }
                if (jSONObject.has("id")) {
                    String optString = jSONObject.optString("id");
                    C0173Do.m399new(optString, "jsonObject.optString(\"id\")");
                    m5282catch(str, optString, cnew, z);
                    return;
                } else if (jSONObject.has("url")) {
                    String optString2 = jSONObject.optString("url");
                    C0173Do.m399new(optString2, "jsonObject.optString(\"url\")");
                    m5282catch(str, optString2, cnew, z);
                    return;
                } else {
                    if (jSONObject.has(NativeProtocol.OPEN_GRAPH_CREATE_OBJECT_KEY)) {
                        String jSONObject2 = jSONObject.toString();
                        C0173Do.m399new(jSONObject2, "jsonObject.toString()");
                        m5282catch(str, jSONObject2, cnew, z);
                        return;
                    }
                    return;
                }
            }
            if (!JSONArray.class.isAssignableFrom(cls)) {
                if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
                    cnew.mo964do(str, obj.toString());
                    return;
                }
                if (Date.class.isAssignableFrom(cls)) {
                    String format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
                    C0173Do.m399new(format, "iso8601DateFormat.format(date)");
                    cnew.mo964do(str, format);
                    return;
                } else {
                    Utility utility = Utility.INSTANCE;
                    String str2 = GraphRequest.f9271for;
                    Utility.logd("GraphRequest", "The type of property " + str + " in the graph object is unknown. It won't be sent in the request.");
                    return;
                }
            }
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            if (length <= 0) {
                return;
            }
            int i = 0;
            while (true) {
                int i2 = i + 1;
                String format2 = String.format(Locale.ROOT, "%s[%d]", Arrays.copyOf(new Object[]{str, Integer.valueOf(i)}, 2));
                C0173Do.m399new(format2, "java.lang.String.format(locale, format, *args)");
                Object opt2 = jSONArray.opt(i);
                C0173Do.m399new(opt2, "jsonArray.opt(i)");
                m5282catch(format2, opt2, cnew, z);
                if (i2 >= length) {
                    return;
                } else {
                    i = i2;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r4v9 */
        /* renamed from: class, reason: not valid java name */
        public static void m5283class(C0324Kl c0324Kl, Logger logger, int i, URL url, OutputStream outputStream, boolean z) {
            String m8303if;
            Ccase ccase = new Ccase(outputStream, logger, z);
            ?? r4 = 1;
            if (i == 1) {
                GraphRequest graphRequest = (GraphRequest) c0324Kl.f1875do.get(0);
                HashMap hashMap = new HashMap();
                for (String str : graphRequest.f9274do.keySet()) {
                    Object obj = graphRequest.f9274do.get(str);
                    if (m5295try(obj)) {
                        C0173Do.m399new(str, "key");
                        hashMap.put(str, new Cdo(graphRequest, obj));
                    }
                }
                if (logger != null) {
                    logger.append("  Parameters:\n");
                }
                Bundle bundle = graphRequest.f9274do;
                for (String str2 : bundle.keySet()) {
                    Object obj2 = bundle.get(str2);
                    if (m5281case(obj2)) {
                        C0173Do.m399new(str2, "key");
                        ccase.m5274else(str2, obj2, graphRequest);
                    }
                }
                if (logger != null) {
                    logger.append("  Attachments:\n");
                }
                m5287final(hashMap, ccase);
                JSONObject jSONObject = graphRequest.f9279do;
                if (jSONObject != null) {
                    String path = url.getPath();
                    C0173Do.m399new(path, "url.path");
                    m5280break(jSONObject, path, ccase);
                    return;
                }
                return;
            }
            Iterator<GraphRequest> it = c0324Kl.iterator();
            while (true) {
                if (it.hasNext()) {
                    AccessToken accessToken = it.next().f9275do;
                    if (accessToken != null) {
                        m8303if = accessToken.f9201catch;
                        break;
                    }
                } else {
                    String str3 = GraphRequest.f9271for;
                    m8303if = C3756th.m8303if();
                    break;
                }
            }
            if (m8303if.length() == 0) {
                throw new C3344mh("App ID was not specified at the request or Settings.");
            }
            ccase.mo964do("batch_app_id", m8303if);
            HashMap hashMap2 = new HashMap();
            JSONArray jSONArray = new JSONArray();
            Iterator<GraphRequest> it2 = c0324Kl.iterator();
            while (it2.hasNext()) {
                GraphRequest next = it2.next();
                next.getClass();
                JSONObject jSONObject2 = new JSONObject();
                String m5266else = next.m5266else(ServerProtocol.getGraphUrlBase());
                next.m5265do();
                Uri parse = Uri.parse(next.m5269if(m5266else, r4));
                int i2 = 2;
                Object[] objArr = new Object[2];
                objArr[0] = parse.getPath();
                objArr[r4] = parse.getQuery();
                String format = String.format("%s?%s", Arrays.copyOf(objArr, 2));
                C0173Do.m399new(format, "java.lang.String.format(format, *args)");
                jSONObject2.put("relative_url", format);
                jSONObject2.put("method", next.f9273do);
                AccessToken accessToken2 = next.f9275do;
                if (accessToken2 != null) {
                    Logger.Companion.registerAccessToken(accessToken2.f9200break);
                }
                ArrayList arrayList = new ArrayList();
                Iterator<String> it3 = next.f9274do.keySet().iterator();
                while (true) {
                    boolean hasNext = it3.hasNext();
                    String str4 = GraphRequest.f9271for;
                    if (!hasNext) {
                        break;
                    }
                    Object obj3 = next.f9274do.get(it3.next());
                    if (m5295try(obj3)) {
                        Locale locale = Locale.ROOT;
                        Object[] objArr2 = new Object[i2];
                        objArr2[0] = "file";
                        objArr2[1] = Integer.valueOf(hashMap2.size());
                        String format2 = String.format(locale, "%s%d", Arrays.copyOf(objArr2, i2));
                        C0173Do.m399new(format2, "java.lang.String.format(locale, format, *args)");
                        arrayList.add(format2);
                        hashMap2.put(format2, new Cdo(next, obj3));
                    }
                    i2 = 2;
                }
                if (!arrayList.isEmpty()) {
                    jSONObject2.put("attached_files", TextUtils.join(",", arrayList));
                }
                JSONObject jSONObject3 = next.f9279do;
                if (jSONObject3 != null) {
                    ArrayList arrayList2 = new ArrayList();
                    m5280break(jSONObject3, format, new C0280Il(arrayList2));
                    jSONObject2.put("body", TextUtils.join("&", arrayList2));
                }
                jSONArray.put(jSONObject2);
                r4 = 1;
            }
            Closeable closeable = ccase.f9285do;
            if (closeable instanceof Iz) {
                Iz iz = (Iz) closeable;
                ccase.m5275for("batch", null, null);
                ccase.m5277if("[", new Object[0]);
                Iterator<GraphRequest> it4 = c0324Kl.iterator();
                int i3 = 0;
                while (it4.hasNext()) {
                    int i4 = i3 + 1;
                    GraphRequest next2 = it4.next();
                    JSONObject jSONObject4 = jSONArray.getJSONObject(i3);
                    iz.mo996do(next2);
                    if (i3 > 0) {
                        ccase.m5277if(",%s", jSONObject4.toString());
                    } else {
                        ccase.m5277if("%s", jSONObject4.toString());
                    }
                    i3 = i4;
                }
                ccase.m5277if("]", new Object[0]);
                Logger logger2 = ccase.f9284do;
                if (logger2 != null) {
                    String m397goto = C0173Do.m397goto("batch", "    ");
                    String jSONArray2 = jSONArray.toString();
                    C0173Do.m399new(jSONArray2, "requestJsonArray.toString()");
                    logger2.appendKeyValue(m397goto, jSONArray2);
                }
            } else {
                String jSONArray3 = jSONArray.toString();
                C0173Do.m399new(jSONArray3, "requestJsonArray.toString()");
                ccase.mo964do("batch", jSONArray3);
            }
            if (logger != null) {
                logger.append("  Attachments:\n");
            }
            m5287final(hashMap2, ccase);
        }

        /* renamed from: const, reason: not valid java name */
        public static void m5284const(C0324Kl c0324Kl, ArrayList arrayList) {
            C0173Do.m401try(c0324Kl, "requests");
            int size = c0324Kl.size();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            if (size > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    GraphRequest graphRequest = (GraphRequest) c0324Kl.f1875do.get(i2);
                    if (graphRequest.f9276do != null) {
                        arrayList2.add(new Pair(graphRequest.f9276do, arrayList.get(i2)));
                    }
                    if (i3 >= size) {
                        break;
                    } else {
                        i2 = i3;
                    }
                }
            }
            if (arrayList2.size() > 0) {
                RunnableC0258Hl runnableC0258Hl = new RunnableC0258Hl(i, arrayList2, c0324Kl);
                Handler handler = c0324Kl.f1874do;
                if ((handler == null ? null : Boolean.valueOf(handler.post(runnableC0258Hl))) == null) {
                    runnableC0258Hl.run();
                }
            }
        }

        /* renamed from: do, reason: not valid java name */
        public static final String m5285do(Object obj) {
            String str = GraphRequest.f9271for;
            if (obj instanceof String) {
                return (String) obj;
            }
            if ((obj instanceof Boolean) || (obj instanceof Number)) {
                return obj.toString();
            }
            if (!(obj instanceof Date)) {
                throw new IllegalArgumentException("Unsupported parameter type.");
            }
            String format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
            C0173Do.m399new(format, "iso8601DateFormat.format(value)");
            return format;
        }

        /* renamed from: else, reason: not valid java name */
        public static GraphRequest m5286else(AccessToken accessToken, String str, Cif cif) {
            return new GraphRequest(accessToken, str, null, null, cif, 32);
        }

        /* renamed from: final, reason: not valid java name */
        public static void m5287final(HashMap hashMap, Ccase ccase) {
            for (Map.Entry entry : hashMap.entrySet()) {
                String str = GraphRequest.f9271for;
                if (m5295try(((Cdo) entry.getValue()).f9289do)) {
                    ccase.m5274else((String) entry.getKey(), ((Cdo) entry.getValue()).f9289do, ((Cdo) entry.getValue()).f9288do);
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public static ArrayList m5288for(C0324Kl c0324Kl) {
            Exception exc;
            HttpURLConnection httpURLConnection;
            ArrayList arrayList;
            Validate.notEmptyAndContainsNoNulls(c0324Kl, "requests");
            HttpURLConnection httpURLConnection2 = null;
            try {
                httpURLConnection = m5294throw(c0324Kl);
                exc = null;
            } catch (Exception e) {
                exc = e;
                httpURLConnection = null;
            } catch (Throwable th) {
                th = th;
                Utility.disconnectQuietly(httpURLConnection2);
                throw th;
            }
            try {
                if (httpURLConnection != null) {
                    arrayList = m5291new(c0324Kl, httpURLConnection);
                } else {
                    int i = C0346Ll.f1994do;
                    ArrayList m1343do = C0346Ll.Cdo.m1343do(c0324Kl.f1875do, null, new C3344mh(exc));
                    m5284const(c0324Kl, m1343do);
                    arrayList = m1343do;
                }
                Utility.disconnectQuietly(httpURLConnection);
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection2 = httpURLConnection;
                Utility.disconnectQuietly(httpURLConnection2);
                throw th;
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public static GraphRequest m5289goto(AccessToken accessToken, String str, JSONObject jSONObject, Cif cif) {
            GraphRequest graphRequest = new GraphRequest(accessToken, str, null, EnumC0171Dm.POST, cif, 32);
            graphRequest.f9279do = jSONObject;
            return graphRequest;
        }

        /* renamed from: if, reason: not valid java name */
        public static HttpURLConnection m5290if(URL url) {
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection());
            if (uRLConnection == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.net.HttpURLConnection");
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
            if (GraphRequest.f9272new == null) {
                GraphRequest.f9272new = defpackage.Cif.m6913else(new Object[]{"FBAndroidSDK", "16.0.0"}, 2, "%s.%s", "java.lang.String.format(format, *args)");
                String customUserAgent = InternalSettings.getCustomUserAgent();
                if (!Utility.isNullOrEmpty(customUserAgent)) {
                    String format = String.format(Locale.ROOT, "%s/%s", Arrays.copyOf(new Object[]{GraphRequest.f9272new, customUserAgent}, 2));
                    C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                    GraphRequest.f9272new = format;
                }
            }
            httpURLConnection.setRequestProperty("User-Agent", GraphRequest.f9272new);
            httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
            httpURLConnection.setChunkedStreamingMode(0);
            return httpURLConnection;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x00b1, code lost:
        
            if ((r1 - r12.f9209if.getTime()) > 86400000) goto L39;
         */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00dc  */
        /* renamed from: new, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.util.ArrayList m5291new(defpackage.C0324Kl r11, java.net.HttpURLConnection r12) {
            /*
                Method dump skipped, instructions count: 269
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.Cfor.m5291new(Kl, java.net.HttpURLConnection):java.util.ArrayList");
        }

        /* JADX WARN: Removed duplicated region for block: B:50:0x015a  */
        /* renamed from: super, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void m5292super(defpackage.C0324Kl r14, java.net.HttpURLConnection r15) {
            /*
                Method dump skipped, instructions count: 350
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.Cfor.m5292super(Kl, java.net.HttpURLConnection):void");
        }

        /* renamed from: this, reason: not valid java name */
        public static GraphRequest m5293this(String str, Bundle bundle, Cif cif) {
            return new GraphRequest(null, str, bundle, EnumC0171Dm.POST, cif, 32);
        }

        /* renamed from: throw, reason: not valid java name */
        public static HttpURLConnection m5294throw(C0324Kl c0324Kl) {
            URL url;
            String graphUrlBaseForSubdomain;
            String str;
            Iterator<GraphRequest> it = c0324Kl.iterator();
            while (it.hasNext()) {
                GraphRequest next = it.next();
                if (EnumC0171Dm.GET == next.f9273do) {
                    Utility utility = Utility.INSTANCE;
                    if (Utility.isNullOrEmpty(next.f9274do.getString("fields"))) {
                        Logger.Companion companion = Logger.Companion;
                        EnumC0658Zq enumC0658Zq = EnumC0658Zq.DEVELOPER_ERRORS;
                        StringBuilder sb = new StringBuilder("GET requests for /");
                        String str2 = next.f9278do;
                        if (str2 == null) {
                            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        }
                        companion.log(enumC0658Zq, 5, "Request", Creturn.m7984try(sb, str2, " should contain an explicit \"fields\" parameter."));
                    }
                }
            }
            try {
                if (c0324Kl.size() == 1) {
                    GraphRequest graphRequest = (GraphRequest) c0324Kl.f1875do.get(0);
                    if (graphRequest.f9273do == EnumC0171Dm.POST && (str = graphRequest.f9278do) != null && str.endsWith("/videos")) {
                        graphUrlBaseForSubdomain = ServerProtocol.getGraphVideoUrlBase();
                    } else {
                        ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
                        graphUrlBaseForSubdomain = ServerProtocol.getGraphUrlBaseForSubdomain(C3756th.m8296case());
                    }
                    String m5266else = graphRequest.m5266else(graphUrlBaseForSubdomain);
                    graphRequest.m5265do();
                    url = new URL(graphRequest.m5269if(m5266else, false));
                } else {
                    url = new URL(ServerProtocol.getGraphUrlBase());
                }
                HttpURLConnection httpURLConnection = null;
                try {
                    httpURLConnection = m5290if(url);
                    m5292super(c0324Kl, httpURLConnection);
                    return httpURLConnection;
                } catch (IOException e) {
                    Utility.disconnectQuietly(httpURLConnection);
                    throw new C3344mh("could not construct request body", e);
                } catch (JSONException e2) {
                    Utility.disconnectQuietly(httpURLConnection);
                    throw new C3344mh("could not construct request body", e2);
                }
            } catch (MalformedURLException e3) {
                throw new C3344mh("could not construct URL for request", e3);
            }
        }

        /* renamed from: try, reason: not valid java name */
        public static boolean m5295try(Object obj) {
            return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
        }
    }

    /* renamed from: com.facebook.GraphRequest$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: if */
        void mo78if(C0346Ll c0346Ll);
    }

    /* renamed from: com.facebook.GraphRequest$new, reason: invalid class name */
    public interface Cnew {
        /* renamed from: do */
        void mo964do(String str, String str2);
    }

    /* renamed from: com.facebook.GraphRequest$try, reason: invalid class name */
    public interface Ctry extends Cif {
        /* renamed from: do, reason: not valid java name */
        void m5296do();
    }

    static {
        new Cfor();
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        C0173Do.m399new(charArray, "(this as java.lang.String).toCharArray()");
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11) + 30;
        if (nextInt > 0) {
            int i = 0;
            do {
                i++;
                sb.append(charArray[secureRandom.nextInt(charArray.length)]);
            } while (i < nextInt);
        }
        String sb2 = sb.toString();
        C0173Do.m399new(sb2, "buffer.toString()");
        f9271for = sb2;
        f9270do = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
    }

    public GraphRequest() {
        this(null, null, null, null, null, 63);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, EnumC0171Dm enumC0171Dm, Cif cif, int i) {
        accessToken = (i & 1) != 0 ? null : accessToken;
        str = (i & 2) != 0 ? null : str;
        bundle = (i & 4) != 0 ? null : bundle;
        enumC0171Dm = (i & 8) != 0 ? null : enumC0171Dm;
        cif = (i & 16) != 0 ? null : cif;
        this.f9275do = accessToken;
        this.f9278do = str;
        this.f9281if = null;
        m5271this(cif);
        m5264break(enumC0171Dm);
        if (bundle != null) {
            this.f9274do = new Bundle(bundle);
        } else {
            this.f9274do = new Bundle();
        }
        this.f9281if = C3756th.m8306try();
    }

    /* renamed from: case, reason: not valid java name */
    public static String m5263case() {
        String m8303if = C3756th.m8303if();
        String m8301for = C3756th.m8301for();
        if (m8303if.length() > 0) {
            if (m8301for.length() > 0) {
                return m8303if + '|' + m8301for;
            }
        }
        Utility.logd("GraphRequest", "Warning: Request without access token missing application ID or client token.");
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m5264break(EnumC0171Dm enumC0171Dm) {
        if (enumC0171Dm == null) {
            enumC0171Dm = EnumC0171Dm.GET;
        }
        this.f9273do = enumC0171Dm;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x003f, code lost:
    
        if (r3 == false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004e  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5265do() {
        /*
            r6 = this;
            android.os.Bundle r0 = r6.f9274do
            java.lang.String r1 = r6.m5272try()
            r2 = 0
            if (r1 != 0) goto Lb
            r3 = 0
            goto L11
        Lb:
            java.lang.String r3 = "|"
            boolean r3 = defpackage.EF.k(r1, r3)
        L11:
            r4 = 1
            if (r1 == 0) goto L20
            java.lang.String r5 = "IG"
            boolean r1 = defpackage.BF.j(r1, r5)
            if (r1 == 0) goto L20
            if (r3 != 0) goto L20
            r1 = 1
            goto L21
        L20:
            r1 = 0
        L21:
            if (r1 == 0) goto L2a
            boolean r1 = r6.m5268goto()
            if (r1 == 0) goto L2a
            goto L41
        L2a:
            java.lang.String r1 = defpackage.C3756th.m8296case()
            java.lang.String r5 = "instagram.com"
            boolean r1 = defpackage.C0173Do.m394do(r1, r5)
            if (r1 != 0) goto L38
            r1 = 1
            goto L3d
        L38:
            boolean r1 = r6.m5268goto()
            r1 = r1 ^ r4
        L3d:
            if (r1 != 0) goto L42
            if (r3 != 0) goto L42
        L41:
            r2 = 1
        L42:
            java.lang.String r1 = "access_token"
            if (r2 == 0) goto L4e
            java.lang.String r2 = m5263case()
            r0.putString(r1, r2)
            goto L57
        L4e:
            java.lang.String r2 = r6.m5272try()
            if (r2 == 0) goto L57
            r0.putString(r1, r2)
        L57:
            boolean r1 = r0.containsKey(r1)
            if (r1 != 0) goto L66
            com.facebook.internal.Utility r1 = com.facebook.internal.Utility.INSTANCE
            java.lang.String r1 = defpackage.C3756th.m8301for()
            com.facebook.internal.Utility.isNullOrEmpty(r1)
        L66:
            java.lang.String r1 = "sdk"
            java.lang.String r2 = "android"
            r0.putString(r1, r2)
            java.lang.String r1 = "format"
            java.lang.String r2 = "json"
            r0.putString(r1, r2)
            th r0 = defpackage.C3756th.f15751do
            Zq r0 = defpackage.EnumC0658Zq.GRAPH_API_DEBUG_INFO
            defpackage.C3756th.m8295break(r0)
            Zq r0 = defpackage.EnumC0658Zq.GRAPH_API_DEBUG_WARNING
            defpackage.C3756th.m8295break(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m5265do():void");
    }

    /* renamed from: else, reason: not valid java name */
    public final String m5266else(String str) {
        if (!(!C0173Do.m394do(C3756th.m8296case(), "instagram.com") ? true : !m5268goto())) {
            str = ServerProtocol.getFacebookGraphUrlBase();
        }
        Object[] objArr = new Object[2];
        objArr[0] = str;
        Pattern pattern = f9270do;
        String str2 = this.f9278do;
        if (!pattern.matcher(str2).matches()) {
            str2 = defpackage.Cif.m6913else(new Object[]{this.f9281if, str2}, 2, "%s/%s", "java.lang.String.format(format, *args)");
        }
        objArr[1] = str2;
        return defpackage.Cif.m6913else(objArr, 2, "%s/%s", "java.lang.String.format(format, *args)");
    }

    /* renamed from: for, reason: not valid java name */
    public final C0346Ll m5267for() {
        ArrayList m5288for = Cfor.m5288for(new C0324Kl(J2.i(new GraphRequest[]{this})));
        if (m5288for.size() == 1) {
            return (C0346Ll) m5288for.get(0);
        }
        throw new C3344mh("invalid state: expected a single response");
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m5268goto() {
        String str = this.f9278do;
        if (str == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder("^/?");
        sb.append(C3756th.m8303if());
        sb.append("/?.*");
        return this.f9280do || Pattern.matches(sb.toString(), str) || Pattern.matches("^/?app/?.*", str);
    }

    /* renamed from: if, reason: not valid java name */
    public final String m5269if(String str, boolean z) {
        if (!z && this.f9273do == EnumC0171Dm.POST) {
            return str;
        }
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (String str2 : this.f9274do.keySet()) {
            Object obj = this.f9274do.get(str2);
            if (obj == null) {
                obj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (Cfor.m5281case(obj)) {
                buildUpon.appendQueryParameter(str2, Cfor.m5285do(obj).toString());
            } else if (this.f9273do != EnumC0171Dm.GET) {
                String format = String.format(Locale.US, "Unsupported parameter type for GET request: %s", Arrays.copyOf(new Object[]{obj.getClass().getSimpleName()}, 1));
                C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                throw new IllegalArgumentException(format);
            }
        }
        String builder = buildUpon.toString();
        C0173Do.m399new(builder, "uriBuilder.toString()");
        return builder;
    }

    /* renamed from: new, reason: not valid java name */
    public final AsyncTaskC0302Jl m5270new() {
        C0324Kl c0324Kl = new C0324Kl(J2.i(new GraphRequest[]{this}));
        Validate.notEmptyAndContainsNoNulls(c0324Kl, "requests");
        AsyncTaskC0302Jl asyncTaskC0302Jl = new AsyncTaskC0302Jl(c0324Kl);
        asyncTaskC0302Jl.executeOnExecutor(C3756th.m8304new(), new Void[0]);
        return asyncTaskC0302Jl;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5271this(Cif cif) {
        C3756th c3756th = C3756th.f15751do;
        C3756th.m8295break(EnumC0658Zq.GRAPH_API_DEBUG_INFO);
        C3756th.m8295break(EnumC0658Zq.GRAPH_API_DEBUG_WARNING);
        this.f9276do = cif;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{Request:  accessToken: ");
        Object obj = this.f9275do;
        if (obj == null) {
            obj = "null";
        }
        sb.append(obj);
        sb.append(", graphPath: ");
        sb.append(this.f9278do);
        sb.append(", graphObject: ");
        sb.append(this.f9279do);
        sb.append(", httpMethod: ");
        sb.append(this.f9273do);
        sb.append(", parameters: ");
        sb.append(this.f9274do);
        sb.append("}");
        String sb2 = sb.toString();
        C0173Do.m399new(sb2, "StringBuilder()\n        .append(\"{Request: \")\n        .append(\" accessToken: \")\n        .append(if (accessToken == null) \"null\" else accessToken)\n        .append(\", graphPath: \")\n        .append(graphPath)\n        .append(\", graphObject: \")\n        .append(graphObject)\n        .append(\", httpMethod: \")\n        .append(httpMethod)\n        .append(\", parameters: \")\n        .append(parameters)\n        .append(\"}\")\n        .toString()");
        return sb2;
    }

    /* renamed from: try, reason: not valid java name */
    public final String m5272try() {
        AccessToken accessToken = this.f9275do;
        if (accessToken != null) {
            if (!this.f9274do.containsKey("access_token")) {
                Logger.Companion companion = Logger.Companion;
                String str = accessToken.f9200break;
                companion.registerAccessToken(str);
                return str;
            }
        } else if (!this.f9274do.containsKey("access_token")) {
            return m5263case();
        }
        return this.f9274do.getString("access_token");
    }

    public static final class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType<?>> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        public final String f9282break;

        /* renamed from: do, reason: not valid java name */
        public final RESOURCE f9283do;

        /* renamed from: com.facebook.GraphRequest$ParcelableResourceWithMimeType$do, reason: invalid class name */
        public static final class Cdo implements Parcelable.Creator<ParcelableResourceWithMimeType<?>> {
            @Override // android.os.Parcelable.Creator
            public final ParcelableResourceWithMimeType<?> createFromParcel(Parcel parcel) {
                C0173Do.m401try(parcel, "source");
                return new ParcelableResourceWithMimeType<>(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final ParcelableResourceWithMimeType<?>[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ParcelableResourceWithMimeType(Parcelable parcelable) {
            this.f9282break = "image/png";
            this.f9283do = parcelable;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            C0173Do.m401try(parcel, "out");
            parcel.writeString(this.f9282break);
            parcel.writeParcelable(this.f9283do, i);
        }

        public ParcelableResourceWithMimeType(Parcel parcel) {
            this.f9282break = parcel.readString();
            this.f9283do = (RESOURCE) parcel.readParcelable(C3756th.m8299do().getClassLoader());
        }
    }
}
