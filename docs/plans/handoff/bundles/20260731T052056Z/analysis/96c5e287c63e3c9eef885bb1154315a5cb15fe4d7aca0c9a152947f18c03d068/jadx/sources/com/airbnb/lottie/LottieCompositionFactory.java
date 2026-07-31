package com.airbnb.lottie;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.LottieCompositionCache;
import com.airbnb.lottie.parser.LottieCompositionMoshiParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.parser.moshi.JsonUtf8Reader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.Buffer$inputStream$1;
import okio.Okio__JvmOkioKt;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LottieCompositionFactory {
    public static final HashMap taskCache = new HashMap();
    public static final HashSet taskIdleListeners = new HashSet();
    public static final byte[] ZIP_MAGIC = {80, 75, 3, 4};
    public static final byte[] GZIP_MAGIC = {31, -117, 8};

    public static LottieResult fromInputStreamSync(Context context, InputStream inputStream, String str) {
        LottieComposition lottieComposition = str == null ? null : LottieCompositionCache.INSTANCE.get(str);
        if (lottieComposition != null) {
            return new LottieResult(lottieComposition);
        }
        try {
            RealBufferedSource realBufferedSource = new RealBufferedSource(Okio__JvmOkioKt.source(inputStream));
            if (matchesMagicBytes(realBufferedSource, ZIP_MAGIC).booleanValue()) {
                ZipInputStream zipInputStream = new ZipInputStream(new Buffer$inputStream$1(realBufferedSource, 2));
                try {
                    return fromZipStreamSyncInternal(context, zipInputStream, str);
                } finally {
                    Utils.closeQuietly(zipInputStream);
                }
            }
            if (!matchesMagicBytes(realBufferedSource, GZIP_MAGIC).booleanValue()) {
                String[] strArr = JsonReader.REPLACEMENT_CHARS;
                return fromJsonReaderSyncInternal(new JsonUtf8Reader(realBufferedSource), str, true);
            }
            RealBufferedSource realBufferedSource2 = new RealBufferedSource(Okio__JvmOkioKt.source(new GZIPInputStream(new Buffer$inputStream$1(realBufferedSource, 2))));
            String[] strArr2 = JsonReader.REPLACEMENT_CHARS;
            return fromJsonReaderSyncInternal(new JsonUtf8Reader(realBufferedSource2), str, true);
        } catch (IOException e) {
            return new LottieResult(e);
        }
    }

    public static LottieResult fromJsonReaderSyncInternal(JsonUtf8Reader jsonUtf8Reader, String str, boolean z) {
        LottieComposition lottieComposition;
        try {
            if (str == null) {
                lottieComposition = null;
            } else {
                try {
                    lottieComposition = LottieCompositionCache.INSTANCE.get(str);
                } catch (Exception e) {
                    LottieResult lottieResult = new LottieResult(e);
                    if (z) {
                        Utils.closeQuietly(jsonUtf8Reader);
                    }
                    return lottieResult;
                }
            }
            if (lottieComposition != null) {
                LottieResult lottieResult2 = new LottieResult(lottieComposition);
                if (z) {
                    Utils.closeQuietly(jsonUtf8Reader);
                }
                return lottieResult2;
            }
            LottieComposition parse = LottieCompositionMoshiParser.parse(jsonUtf8Reader);
            if (str != null) {
                LottieCompositionCache.INSTANCE.cache.put(str, parse);
            }
            LottieResult lottieResult3 = new LottieResult(parse);
            if (z) {
                Utils.closeQuietly(jsonUtf8Reader);
            }
            return lottieResult3;
        } catch (Throwable th) {
            if (z) {
                Utils.closeQuietly(jsonUtf8Reader);
            }
            throw th;
        }
    }

    public static LottieResult fromZipStreamSyncInternal(Context context, ZipInputStream zipInputStream, String str) {
        LottieComposition lottieComposition;
        LottieImageAsset lottieImageAsset;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        if (str == null) {
            lottieComposition = null;
        } else {
            try {
                lottieComposition = LottieCompositionCache.INSTANCE.get(str);
            } catch (IOException e) {
                return new LottieResult(e);
            }
        }
        if (lottieComposition != null) {
            return new LottieResult(lottieComposition);
        }
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        LottieComposition lottieComposition2 = null;
        while (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.contains("__MACOSX")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().contains(".json")) {
                RealBufferedSource realBufferedSource = new RealBufferedSource(Okio__JvmOkioKt.source(zipInputStream));
                String[] strArr = JsonReader.REPLACEMENT_CHARS;
                lottieComposition2 = fromJsonReaderSyncInternal(new JsonUtf8Reader(realBufferedSource), null, false).value;
            } else {
                if (!name.contains(".png") && !name.contains(".webp") && !name.contains(".jpg") && !name.contains(".jpeg")) {
                    if (!name.contains(".ttf") && !name.contains(".otf")) {
                        zipInputStream.closeEntry();
                    }
                    String[] split = name.split("/");
                    String str2 = split[split.length - 1];
                    String str3 = str2.split("\\.")[0];
                    if (context == null) {
                        return new LottieResult(new IllegalStateException("Unable to extract font " + str3 + " please pass a non-null Context parameter"));
                    }
                    File file = new File(context.getCacheDir(), str2);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                            try {
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int read = zipInputStream.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    fileOutputStream2.write(bArr, 0, read);
                                }
                                fileOutputStream2.flush();
                                fileOutputStream2.close();
                                fileOutputStream.close();
                            } catch (Throwable th) {
                                try {
                                    fileOutputStream2.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } finally {
                        }
                    } catch (Throwable th3) {
                        Logger.warning("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th3);
                    }
                    Typeface createFromFile = Typeface.createFromFile(file);
                    if (!file.delete()) {
                        Logger.warning("Failed to delete temp font file " + file.getAbsolutePath() + ".");
                    }
                    hashMap2.put(str3, createFromFile);
                }
                String[] split2 = name.split("/");
                hashMap.put(split2[split2.length - 1], BitmapFactory.decodeStream(zipInputStream));
            }
            nextEntry = zipInputStream.getNextEntry();
        }
        if (lottieComposition2 == null) {
            return new LottieResult(new IllegalArgumentException("Unable to parse composition"));
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            String str4 = (String) entry.getKey();
            Iterator it = ((HashMap) lottieComposition2.getImages()).values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    lottieImageAsset = null;
                    break;
                }
                lottieImageAsset = (LottieImageAsset) it.next();
                if (lottieImageAsset.fileName.equals(str4)) {
                    break;
                }
            }
            if (lottieImageAsset != null) {
                lottieImageAsset.bitmap = Utils.resizeBitmapIfNeeded((Bitmap) entry.getValue(), lottieImageAsset.width, lottieImageAsset.height);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            boolean z = false;
            for (Font font : lottieComposition2.fonts.values()) {
                if (font.family.equals(entry2.getKey())) {
                    font.typeface = (Typeface) entry2.getValue();
                    z = true;
                }
            }
            if (!z) {
                Logger.warning("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
            }
        }
        if (hashMap.isEmpty()) {
            Iterator it2 = ((HashMap) lottieComposition2.getImages()).entrySet().iterator();
            while (it2.hasNext()) {
                LottieImageAsset lottieImageAsset2 = (LottieImageAsset) ((Map.Entry) it2.next()).getValue();
                if (lottieImageAsset2 == null) {
                    return null;
                }
                String str5 = lottieImageAsset2.fileName;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = 160;
                if (str5.startsWith("data:") && str5.indexOf("base64,") > 0) {
                    try {
                        byte[] decode = Base64.decode(str5.substring(str5.indexOf(44) + 1), 0);
                        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
                        if (decodeByteArray != null) {
                            lottieImageAsset2.bitmap = Utils.resizeBitmapIfNeeded(decodeByteArray, lottieImageAsset2.width, lottieImageAsset2.height);
                        }
                    } catch (IllegalArgumentException e2) {
                        Logger.warning("data URL did not have correct base64 format.", e2);
                        return null;
                    }
                }
            }
        }
        if (str != null) {
            LottieCompositionCache.INSTANCE.cache.put(str, lottieComposition2);
        }
        return new LottieResult(lottieComposition2);
    }

    public static Boolean matchesMagicBytes(RealBufferedSource realBufferedSource, byte[] bArr) {
        try {
            RealBufferedSource peek = realBufferedSource.peek();
            for (byte b : bArr) {
                if (peek.readByte() != b) {
                    return Boolean.FALSE;
                }
            }
            peek.close();
            return Boolean.TRUE;
        } catch (Exception unused) {
            Logger.INSTANCE.getClass();
            AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
            return Boolean.FALSE;
        } catch (NoSuchMethodError unused2) {
            return Boolean.FALSE;
        }
    }

    public static void notifyTaskCacheIdleListeners() {
        ArrayList arrayList = new ArrayList(taskIdleListeners);
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
    }
}
