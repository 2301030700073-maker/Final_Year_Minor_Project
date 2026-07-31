package com.airbnb.lottie.parser;

import android.graphics.Color;
import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.ScaleXY;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PathParser implements ValueParser {
    public final /* synthetic */ int $r8$classId;
    public static final PathParser INSTANCE$1 = new PathParser(1);
    public static final PathParser INSTANCE$2 = new PathParser(2);
    public static final PathParser INSTANCE$3 = new PathParser(3);
    public static final PathParser INSTANCE = new PathParser(0);
    public static final PathParser INSTANCE$4 = new PathParser(4);
    public static final PathParser INSTANCE$5 = new PathParser(5);

    public /* synthetic */ PathParser(int i) {
        this.$r8$classId = i;
    }

    @Override // com.airbnb.lottie.parser.ValueParser
    public final Object parse(JsonReader jsonReader, float f) {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                return JsonUtils.jsonToPoint(jsonReader, f);
            case 1:
                z = jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY;
                if (z) {
                    jsonReader.beginArray();
                }
                double nextDouble = jsonReader.nextDouble();
                double nextDouble2 = jsonReader.nextDouble();
                double nextDouble3 = jsonReader.nextDouble();
                double nextDouble4 = jsonReader.peek() == JsonReader.Token.NUMBER ? jsonReader.nextDouble() : 1.0d;
                if (z) {
                    jsonReader.endArray();
                }
                if (nextDouble <= 1.0d && nextDouble2 <= 1.0d && nextDouble3 <= 1.0d) {
                    nextDouble *= 255.0d;
                    nextDouble2 *= 255.0d;
                    nextDouble3 *= 255.0d;
                    if (nextDouble4 <= 1.0d) {
                        nextDouble4 *= 255.0d;
                    }
                }
                return Integer.valueOf(Color.argb((int) nextDouble4, (int) nextDouble, (int) nextDouble2, (int) nextDouble3));
            case 2:
                return Float.valueOf(JsonUtils.valueFromObject(jsonReader) * f);
            case 3:
                return Integer.valueOf(Math.round(JsonUtils.valueFromObject(jsonReader) * f));
            case 4:
                JsonReader.Token peek = jsonReader.peek();
                if (peek == JsonReader.Token.BEGIN_ARRAY) {
                    return JsonUtils.jsonToPoint(jsonReader, f);
                }
                if (peek == JsonReader.Token.BEGIN_OBJECT) {
                    return JsonUtils.jsonToPoint(jsonReader, f);
                }
                if (peek != JsonReader.Token.NUMBER) {
                    Gson$$ExternalSyntheticBUOutline0.m("Cannot convert json to point. Next token is ", peek);
                    return null;
                }
                PointF pointF = new PointF(((float) jsonReader.nextDouble()) * f, ((float) jsonReader.nextDouble()) * f);
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                return pointF;
            default:
                z = jsonReader.peek() == JsonReader.Token.BEGIN_ARRAY;
                if (z) {
                    jsonReader.beginArray();
                }
                float nextDouble5 = (float) jsonReader.nextDouble();
                float nextDouble6 = (float) jsonReader.nextDouble();
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                if (z) {
                    jsonReader.endArray();
                }
                return new ScaleXY((nextDouble5 / 100.0f) * f, (nextDouble6 / 100.0f) * f);
        }
    }
}
