package org.schabi.newpipe.settings.export;

import android.content.SharedPreferences;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonStringWriter;
import com.grack.nanojson.JsonTokener;
import com.grack.nanojson.JsonWriterException;
import java.io.ByteArrayOutputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipInputStream;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.util.ZipHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ImportExportManager$$ExternalSyntheticLambda0 implements ZipHelper.InputStreamConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SharedPreferences f$0;

    public /* synthetic */ ImportExportManager$$ExternalSyntheticLambda0(SharedPreferences sharedPreferences, int i) {
        this.$r8$classId = i;
        this.f$0 = sharedPreferences;
    }

    @Override // org.schabi.newpipe.util.ZipHelper.InputStreamConsumer
    public void acceptStream(ZipInputStream zipInputStream) {
        int i = this.$r8$classId;
        SharedPreferences sharedPreferences = this.f$0;
        switch (i) {
            case 2:
                JsonObject jsonObject = (JsonObject) new JsonParser(new JsonTokener(zipInputStream)).parse(JsonObject.class);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.clear();
                jsonObject.getClass();
                for (Map.Entry entry : jsonObject.entrySet()) {
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (value instanceof Boolean) {
                        edit.putBoolean(str, ((Boolean) value).booleanValue());
                    } else if (value instanceof Float) {
                        edit.putFloat(str, ((Number) value).floatValue());
                    } else if (value instanceof Integer) {
                        edit.putInt(str, ((Number) value).intValue());
                    } else if (value instanceof Long) {
                        edit.putLong(str, ((Number) value).longValue());
                    } else if (value instanceof String) {
                        edit.putString(str, (String) value);
                    } else if (value instanceof JsonArray) {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : (Iterable) value) {
                            String str2 = obj instanceof String ? (String) obj : null;
                            if (str2 != null) {
                                arrayList.add(str2);
                            }
                        }
                        edit.putStringSet(str, CollectionsKt.toSet(arrayList));
                    }
                }
                if (edit.commit()) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3("Unable to commit loadJsonPrefs");
                return;
            default:
                PreferencesObjectInputStream preferencesObjectInputStream = new PreferencesObjectInputStream(zipInputStream);
                try {
                    Object readObject = preferencesObjectInputStream.readObject();
                    readObject.getClass();
                    SharedPreferences.Editor edit2 = sharedPreferences.edit();
                    edit2.clear();
                    for (Map.Entry entry2 : ((Map) readObject).entrySet()) {
                        String str3 = (String) entry2.getKey();
                        Object value2 = entry2.getValue();
                        if (value2 instanceof Boolean) {
                            edit2.putBoolean(str3, ((Boolean) value2).booleanValue());
                        } else if (value2 instanceof Float) {
                            edit2.putFloat(str3, ((Number) value2).floatValue());
                        } else if (value2 instanceof Integer) {
                            edit2.putInt(str3, ((Number) value2).intValue());
                        } else if (value2 instanceof Long) {
                            edit2.putLong(str3, ((Number) value2).longValue());
                        } else if (value2 instanceof String) {
                            edit2.putString(str3, (String) value2);
                        } else if (value2 instanceof Set) {
                            edit2.putStringSet(str3, (Set) value2);
                        }
                    }
                    if (!edit2.commit()) {
                        throw new IOException("Unable to commit loadSerializedPrefs");
                    }
                    preferencesObjectInputStream.close();
                    return;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(preferencesObjectInputStream, th);
                        throw th2;
                    }
                }
        }
    }

    public void acceptStream(ByteArrayOutputStream byteArrayOutputStream) {
        int i = this.$r8$classId;
        SharedPreferences sharedPreferences = this.f$0;
        switch (i) {
            case 0:
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(sharedPreferences.getAll());
                    objectOutputStream.flush();
                    objectOutputStream.close();
                    return;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(objectOutputStream, th);
                        throw th2;
                    }
                }
            default:
                JsonStringWriter jsonStringWriter = new JsonStringWriter(new OutputStreamWriter(byteArrayOutputStream, Charset.forName("UTF-8")), "");
                jsonStringWriter.object(null, sharedPreferences.getAll());
                if (jsonStringWriter.stateIndex > 0) {
                    throw new JsonWriterException("Unclosed JSON objects and/or arrays when closing writer");
                }
                if (!jsonStringWriter.first) {
                    jsonStringWriter.flush();
                    try {
                        Appendable appendable = jsonStringWriter.appendable;
                        if (appendable instanceof Flushable) {
                            ((Flushable) appendable).flush();
                            return;
                        }
                        return;
                    } catch (IOException e) {
                        throw new JsonWriterException(e);
                    }
                }
                throw new JsonWriterException("Nothing was written to the JSON writer");
        }
    }
}
