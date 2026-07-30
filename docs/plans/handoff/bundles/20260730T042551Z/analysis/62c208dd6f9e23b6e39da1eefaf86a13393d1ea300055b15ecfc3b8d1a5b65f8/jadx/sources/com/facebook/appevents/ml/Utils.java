package com.facebook.appevents.ml;

import android.text.TextUtils;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C2900hz;
import defpackage.C3548q7;
import defpackage.C3756th;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Utils {
    private static final String DIR_NAME = "facebook_ml/";
    public static final Utils INSTANCE = new Utils();

    private Utils() {
    }

    public static final File getMlDir() {
        if (CrashShieldHandler.isObjectCrashing(Utils.class)) {
            return null;
        }
        try {
            File file = new File(C3756th.m8299do().getFilesDir(), DIR_NAME);
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    return null;
                }
            }
            return file;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Utils.class);
            return null;
        }
    }

    public static final Map<String, MTensor> parseModelWeights(File file) {
        int i;
        if (CrashShieldHandler.isObjectCrashing(Utils.class)) {
            return null;
        }
        try {
            C0173Do.m401try(file, "file");
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                int available = fileInputStream.available();
                DataInputStream dataInputStream = new DataInputStream(fileInputStream);
                byte[] bArr = new byte[available];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                if (available < 4) {
                    return null;
                }
                ByteBuffer wrap = ByteBuffer.wrap(bArr, 0, 4);
                wrap.order(ByteOrder.LITTLE_ENDIAN);
                int i2 = wrap.getInt();
                int i3 = i2 + 4;
                if (available < i3) {
                    return null;
                }
                JSONObject jSONObject = new JSONObject(new String(bArr, 4, i2, C3548q7.f15043do));
                JSONArray names = jSONObject.names();
                int length = names.length();
                String[] strArr = new String[length];
                int i4 = length - 1;
                if (i4 >= 0) {
                    int i5 = 0;
                    while (true) {
                        int i6 = i5 + 1;
                        strArr[i5] = names.getString(i5);
                        if (i6 > i4) {
                            break;
                        }
                        i5 = i6;
                    }
                }
                if (length > 1) {
                    Arrays.sort(strArr);
                }
                HashMap hashMap = new HashMap();
                int i7 = 0;
                while (i7 < length) {
                    String str = strArr[i7];
                    i7++;
                    if (str != null) {
                        JSONArray jSONArray = jSONObject.getJSONArray(str);
                        int length2 = jSONArray.length();
                        int[] iArr = new int[length2];
                        int i8 = length2 - 1;
                        if (i8 >= 0) {
                            int i9 = 0;
                            int i10 = 1;
                            while (true) {
                                int i11 = i9 + 1;
                                int i12 = jSONArray.getInt(i9);
                                iArr[i9] = i12;
                                i10 *= i12;
                                if (i11 > i8) {
                                    break;
                                }
                                i9 = i11;
                            }
                            i = i10;
                        } else {
                            i = 1;
                        }
                        int i13 = i * 4;
                        int i14 = i3 + i13;
                        if (i14 > available) {
                            return null;
                        }
                        ByteBuffer wrap2 = ByteBuffer.wrap(bArr, i3, i13);
                        wrap2.order(ByteOrder.LITTLE_ENDIAN);
                        MTensor mTensor = new MTensor(iArr);
                        wrap2.asFloatBuffer().get(mTensor.getData(), 0, i);
                        hashMap.put(str, mTensor);
                        i3 = i14;
                    }
                }
                return hashMap;
            } catch (Exception unused) {
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Utils.class);
            return null;
        }
    }

    public final String normalizeString(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            C0173Do.m401try(str, "str");
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = C0173Do.m393case(str.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            Object[] array = new C2900hz("\\s+").m6853do(str.subSequence(i, length + 1).toString()).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            String join = TextUtils.join(" ", (String[]) array);
            C0173Do.m399new(join, "join(\" \", strArray)");
            return join;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final int[] vectorize(String str, int i) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            C0173Do.m401try(str, "texts");
            int[] iArr = new int[i];
            String normalizeString = normalizeString(str);
            Charset forName = Charset.forName("UTF-8");
            C0173Do.m399new(forName, "forName(\"UTF-8\")");
            if (normalizeString == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = normalizeString.getBytes(forName);
            C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
            if (i > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    if (i2 < bytes.length) {
                        iArr[i2] = bytes[i2] & 255;
                    } else {
                        iArr[i2] = 0;
                    }
                    if (i3 >= i) {
                        break;
                    }
                    i2 = i3;
                }
            }
            return iArr;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }
}
