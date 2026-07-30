package defpackage;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.auto.value.AutoValue;
import java.io.BufferedReader;
import java.io.IOException;

@AutoValue
/* renamed from: Tq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0526Tq {
    /* renamed from: do, reason: not valid java name */
    public static C2906i4 m2291do(BufferedReader bufferedReader) {
        JsonReader jsonReader = new JsonReader(bufferedReader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? new C2906i4(Long.parseLong(jsonReader.nextString())) : new C2906i4(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public abstract long mo2292if();
}
