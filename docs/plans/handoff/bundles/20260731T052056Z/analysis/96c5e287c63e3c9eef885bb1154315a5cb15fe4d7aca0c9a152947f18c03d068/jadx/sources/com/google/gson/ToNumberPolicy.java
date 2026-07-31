package com.google.gson;

import androidx.compose.animation.core.Animation;
import coil3.network.HttpException;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import java.math.BigDecimal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ToNumberPolicy {
    private static final /* synthetic */ ToNumberPolicy[] $VALUES;
    public static final ToNumberPolicy BIG_DECIMAL;
    public static final ToNumberPolicy DOUBLE;
    public static final ToNumberPolicy LAZILY_PARSED_NUMBER;
    public static final ToNumberPolicy LONG_OR_DOUBLE;

    static {
        ToNumberPolicy toNumberPolicy = new ToNumberPolicy() { // from class: com.google.gson.ToNumberPolicy.1
            @Override // com.google.gson.ToNumberPolicy
            public final Number readNumber(JsonReader jsonReader) {
                return Double.valueOf(jsonReader.nextDouble());
            }
        };
        DOUBLE = toNumberPolicy;
        ToNumberPolicy toNumberPolicy2 = new ToNumberPolicy() { // from class: com.google.gson.ToNumberPolicy.2
            @Override // com.google.gson.ToNumberPolicy
            public final Number readNumber(JsonReader jsonReader) {
                return new LazilyParsedNumber(jsonReader.nextString());
            }
        };
        LAZILY_PARSED_NUMBER = toNumberPolicy2;
        ToNumberPolicy toNumberPolicy3 = new ToNumberPolicy() { // from class: com.google.gson.ToNumberPolicy.3
            @Override // com.google.gson.ToNumberPolicy
            public final Number readNumber(JsonReader jsonReader) {
                String nextString = jsonReader.nextString();
                try {
                    try {
                        return Long.valueOf(Long.parseLong(nextString));
                    } catch (NumberFormatException unused) {
                        Double valueOf = Double.valueOf(nextString);
                        if (!valueOf.isInfinite()) {
                            if (valueOf.isNaN()) {
                            }
                            return valueOf;
                        }
                        if (!jsonReader.lenient) {
                            throw new MalformedJsonException("JSON forbids NaN and infinities: " + valueOf + "; at path " + jsonReader.getPreviousPath());
                        }
                        return valueOf;
                    }
                } catch (NumberFormatException e) {
                    StringBuilder m21m = Animation.CC.m21m("Cannot parse ", nextString, "; at path ");
                    m21m.append(jsonReader.getPreviousPath());
                    throw new HttpException(m21m.toString(), e);
                }
            }
        };
        LONG_OR_DOUBLE = toNumberPolicy3;
        ToNumberPolicy toNumberPolicy4 = new ToNumberPolicy() { // from class: com.google.gson.ToNumberPolicy.4
            @Override // com.google.gson.ToNumberPolicy
            public final Number readNumber(JsonReader jsonReader) {
                String nextString = jsonReader.nextString();
                try {
                    return new BigDecimal(nextString);
                } catch (NumberFormatException e) {
                    StringBuilder m21m = Animation.CC.m21m("Cannot parse ", nextString, "; at path ");
                    m21m.append(jsonReader.getPreviousPath());
                    throw new HttpException(m21m.toString(), e);
                }
            }
        };
        BIG_DECIMAL = toNumberPolicy4;
        $VALUES = new ToNumberPolicy[]{toNumberPolicy, toNumberPolicy2, toNumberPolicy3, toNumberPolicy4};
    }

    public static ToNumberPolicy valueOf(String str) {
        return (ToNumberPolicy) Enum.valueOf(ToNumberPolicy.class, str);
    }

    public static ToNumberPolicy[] values() {
        return (ToNumberPolicy[]) $VALUES.clone();
    }

    public abstract Number readNumber(JsonReader jsonReader);
}
