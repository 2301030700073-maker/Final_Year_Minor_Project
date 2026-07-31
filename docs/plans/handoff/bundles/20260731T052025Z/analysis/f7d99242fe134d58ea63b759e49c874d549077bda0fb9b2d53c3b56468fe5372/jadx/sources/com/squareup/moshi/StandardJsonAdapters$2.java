package com.squareup.moshi;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.ConnectionSecurity;
import com.fsck.k9.mail.ServerSettings;
import java.math.BigDecimal;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.text.Charsets;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.io.Sink$CC;
import net.thunderbird.feature.account.storage.legacy.serializer.ServerSettingsDtoSerializerKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StandardJsonAdapters$2 extends JsonAdapter {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ StandardJsonAdapters$2(int i) {
        this.$r8$classId = i;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public final Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
        long j;
        String nextString;
        switch (this.$r8$classId) {
            case 0:
                return Boolean.valueOf(jsonUtf8Reader.nextBoolean());
            case 1:
                return jsonUtf8Reader.nextString();
            case 2:
                return Byte.valueOf((byte) Types.rangeCheckNextInt(jsonUtf8Reader, "a byte", -128, 255));
            case 3:
                String nextString2 = jsonUtf8Reader.nextString();
                if (nextString2.length() <= 1) {
                    return Character.valueOf(nextString2.charAt(0));
                }
                throw new JsonDataException(ImageAnalysis$$ExternalSyntheticLambda3.m("Expected a char but was ", CameraDevices$CC.m('\"', "\"", nextString2), " at path ", jsonUtf8Reader.getPath()));
            case 4:
                return Double.valueOf(jsonUtf8Reader.nextDouble());
            case 5:
                float nextDouble = (float) jsonUtf8Reader.nextDouble();
                if (!Float.isInfinite(nextDouble)) {
                    return Float.valueOf(nextDouble);
                }
                throw new JsonDataException("JSON forbids NaN and infinities: " + nextDouble + " at path " + jsonUtf8Reader.getPath());
            case 6:
                return Integer.valueOf(jsonUtf8Reader.nextInt());
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                int i = jsonUtf8Reader.peeked;
                if (i == 0) {
                    i = jsonUtf8Reader.doPeek();
                }
                if (i == 16) {
                    jsonUtf8Reader.peeked = 0;
                    int[] iArr = jsonUtf8Reader.pathIndices;
                    int i2 = jsonUtf8Reader.stackSize - 1;
                    iArr[i2] = iArr[i2] + 1;
                    j = jsonUtf8Reader.peekedLong;
                } else {
                    if (i == 17) {
                        Buffer buffer = jsonUtf8Reader.buffer;
                        long j2 = jsonUtf8Reader.peekedNumberLength;
                        buffer.getClass();
                        jsonUtf8Reader.peekedString = buffer.readString(j2, Charsets.UTF_8);
                    } else if (i == 9 || i == 8) {
                        String nextQuotedValue = i == 9 ? jsonUtf8Reader.nextQuotedValue(JsonUtf8Reader.DOUBLE_QUOTE_OR_SLASH) : jsonUtf8Reader.nextQuotedValue(JsonUtf8Reader.SINGLE_QUOTE_OR_SLASH);
                        jsonUtf8Reader.peekedString = nextQuotedValue;
                        try {
                            long parseLong = Long.parseLong(nextQuotedValue);
                            jsonUtf8Reader.peeked = 0;
                            int[] iArr2 = jsonUtf8Reader.pathIndices;
                            int i3 = jsonUtf8Reader.stackSize - 1;
                            iArr2[i3] = iArr2[i3] + 1;
                            j = parseLong;
                        } catch (NumberFormatException unused) {
                        }
                    } else if (i != 11) {
                        Regex$$ExternalSyntheticBUOutline0.m$2(Sink$CC.stringValueOf$2(jsonUtf8Reader.peek()), jsonUtf8Reader.getPath(), "Expected a long but was ");
                        return null;
                    }
                    jsonUtf8Reader.peeked = 11;
                    try {
                        long longValueExact = new BigDecimal(jsonUtf8Reader.peekedString).longValueExact();
                        jsonUtf8Reader.peekedString = null;
                        jsonUtf8Reader.peeked = 0;
                        int[] iArr3 = jsonUtf8Reader.pathIndices;
                        int i4 = jsonUtf8Reader.stackSize - 1;
                        iArr3[i4] = iArr3[i4] + 1;
                        j = longValueExact;
                    } catch (ArithmeticException | NumberFormatException unused2) {
                        Regex$$ExternalSyntheticBUOutline0.m$2(jsonUtf8Reader.peekedString, jsonUtf8Reader.getPath(), "Expected a long but was ");
                        return null;
                    }
                }
                return Long.valueOf(j);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Short.valueOf((short) Types.rangeCheckNextInt(jsonUtf8Reader, "a short", -32768, 32767));
            default:
                jsonUtf8Reader.beginObject();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Integer num = null;
                String str = null;
                String str2 = null;
                ConnectionSecurity connectionSecurity = null;
                AuthType authType = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
                while (jsonUtf8Reader.hasNext()) {
                    switch (jsonUtf8Reader.selectName(ServerSettingsDtoSerializerKt.JSON_KEYS)) {
                        case 0:
                            str = jsonUtf8Reader.nextString();
                            break;
                        case 1:
                            str2 = jsonUtf8Reader.nextString();
                            break;
                        case 2:
                            num = Integer.valueOf(jsonUtf8Reader.nextInt());
                            break;
                        case 3:
                            String nextString3 = jsonUtf8Reader.nextString();
                            nextString3.getClass();
                            connectionSecurity = ConnectionSecurity.valueOf(nextString3);
                            break;
                        case 4:
                            String nextString4 = jsonUtf8Reader.nextString();
                            nextString4.getClass();
                            authType = AuthType.valueOf(nextString4);
                            break;
                        case 5:
                            str3 = jsonUtf8Reader.nextString();
                            break;
                        case 6:
                            if (jsonUtf8Reader.peek() != 9) {
                                str4 = jsonUtf8Reader.nextString();
                                break;
                            } else {
                                jsonUtf8Reader.nextNull();
                                str4 = null;
                                break;
                            }
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            if (jsonUtf8Reader.peek() != 9) {
                                str5 = jsonUtf8Reader.nextString();
                                break;
                            } else {
                                jsonUtf8Reader.nextNull();
                                str5 = null;
                                break;
                            }
                        default:
                            String nextName = jsonUtf8Reader.nextName();
                            if (jsonUtf8Reader.peek() == 9) {
                                jsonUtf8Reader.nextNull();
                                nextString = null;
                            } else {
                                nextString = jsonUtf8Reader.nextString();
                            }
                            linkedHashMap.put(nextName, nextString);
                            break;
                    }
                }
                jsonUtf8Reader.endObject();
                if (str == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("'type' must not be missing");
                    return null;
                }
                if (str2 == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("'host' must not be missing");
                    return null;
                }
                if (num == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("'port' must not be missing");
                    return null;
                }
                if (connectionSecurity == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("'connectionSecurity' must not be missing");
                    return null;
                }
                if (authType == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("'authenticationType' must not be missing");
                    return null;
                }
                if (str3 != null) {
                    return new ServerSettings(str, str2, num.intValue(), connectionSecurity, authType, str3, str4, str5, linkedHashMap);
                }
                UriKt$$ExternalSyntheticBUOutline0.m("'username' must not be missing");
                return null;
        }
    }

    @Override // com.squareup.moshi.JsonAdapter
    public final void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                if (jsonUtf8Writer.promoteValueToName) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Boolean cannot be used as a map key in JSON at path ".concat(jsonUtf8Writer.getPath()));
                    return;
                }
                jsonUtf8Writer.writeDeferredName();
                jsonUtf8Writer.beforeValue();
                jsonUtf8Writer.sink.m1057writeUtf8(booleanValue ? "true" : "false");
                int[] iArr = jsonUtf8Writer.pathIndices;
                int i = jsonUtf8Writer.stackSize - 1;
                iArr[i] = iArr[i] + 1;
                return;
            case 1:
                jsonUtf8Writer.value((String) obj);
                return;
            case 2:
                jsonUtf8Writer.value(((Byte) obj).intValue() & 255);
                return;
            case 3:
                jsonUtf8Writer.value(((Character) obj).toString());
                return;
            case 4:
                double doubleValue = ((Double) obj).doubleValue();
                if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                    throw new IllegalArgumentException("Numeric values must be finite, but was " + doubleValue);
                }
                if (jsonUtf8Writer.promoteValueToName) {
                    jsonUtf8Writer.promoteValueToName = false;
                    jsonUtf8Writer.name(Double.toString(doubleValue));
                    return;
                }
                jsonUtf8Writer.writeDeferredName();
                jsonUtf8Writer.beforeValue();
                jsonUtf8Writer.sink.m1057writeUtf8(Double.toString(doubleValue));
                int[] iArr2 = jsonUtf8Writer.pathIndices;
                int i2 = jsonUtf8Writer.stackSize - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return;
            case 5:
                Float f = (Float) obj;
                f.getClass();
                jsonUtf8Writer.value(f);
                return;
            case 6:
                jsonUtf8Writer.value(((Integer) obj).intValue());
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                jsonUtf8Writer.value(((Long) obj).longValue());
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                jsonUtf8Writer.value(((Short) obj).intValue());
                return;
            default:
                ServerSettings serverSettings = (ServerSettings) obj;
                if (serverSettings == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                    return;
                }
                jsonUtf8Writer.beginObject();
                jsonUtf8Writer.serializeNulls = true;
                jsonUtf8Writer.name("type");
                jsonUtf8Writer.value(serverSettings.type);
                jsonUtf8Writer.name("host");
                jsonUtf8Writer.value(serverSettings.host);
                jsonUtf8Writer.name("port");
                jsonUtf8Writer.value(Integer.valueOf(serverSettings.port));
                jsonUtf8Writer.name("connectionSecurity");
                jsonUtf8Writer.value(serverSettings.connectionSecurity.name());
                jsonUtf8Writer.name("authenticationType");
                jsonUtf8Writer.value(serverSettings.authenticationType.name());
                jsonUtf8Writer.name("username");
                jsonUtf8Writer.value(serverSettings.username);
                jsonUtf8Writer.name("password");
                jsonUtf8Writer.value(serverSettings.password);
                jsonUtf8Writer.name("clientCertificateAlias");
                jsonUtf8Writer.value(serverSettings.clientCertificateAlias);
                for (Map.Entry entry : serverSettings.extra.entrySet()) {
                    String str = (String) entry.getKey();
                    String str2 = (String) entry.getValue();
                    jsonUtf8Writer.name(str);
                    jsonUtf8Writer.value(str2);
                }
                jsonUtf8Writer.promoteValueToName = false;
                jsonUtf8Writer.close('}', 3, 5);
                return;
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "JsonAdapter(Boolean)";
            case 1:
                return "JsonAdapter(String)";
            case 2:
                return "JsonAdapter(Byte)";
            case 3:
                return "JsonAdapter(Character)";
            case 4:
                return "JsonAdapter(Double)";
            case 5:
                return "JsonAdapter(Float)";
            case 6:
                return "JsonAdapter(Integer)";
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "JsonAdapter(Long)";
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return "JsonAdapter(Short)";
            default:
                return super.toString();
        }
    }
}
