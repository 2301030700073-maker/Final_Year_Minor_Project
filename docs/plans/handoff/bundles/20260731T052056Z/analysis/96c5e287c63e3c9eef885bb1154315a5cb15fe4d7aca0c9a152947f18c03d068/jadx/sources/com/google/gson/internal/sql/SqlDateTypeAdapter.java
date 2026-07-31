package com.google.gson.internal.sql;

import androidx.compose.animation.core.Animation;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SqlDateTypeAdapter extends TypeAdapter {
    public static final TypeAdapters.AnonymousClass29 FACTORY = new TypeAdapters.AnonymousClass29(3);
    public static final TypeAdapters.AnonymousClass29 FACTORY$1 = new TypeAdapters.AnonymousClass29(4);
    public static final TypeAdapters.AnonymousClass29 FACTORY$2 = new TypeAdapters.AnonymousClass29(5);
    public final /* synthetic */ int $r8$classId;
    public final Object format;

    public SqlDateTypeAdapter(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.format = new SimpleDateFormat("hh:mm:ss a");
                break;
            default:
                this.format = new SimpleDateFormat("MMM d, yyyy");
                break;
        }
    }

    private final Object read$com$google$gson$internal$sql$SqlTimeTypeAdapter(JsonReader jsonReader) {
        Time time;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String nextString = jsonReader.nextString();
        try {
            synchronized (this) {
                time = new Time(((SimpleDateFormat) this.format).parse(nextString).getTime());
            }
            return time;
        } catch (ParseException e) {
            Gson$$ExternalSyntheticBUOutline0.m(Animation.CC.m21m("Failed parsing '", nextString, "' as SQL Time; at path "), (Object) jsonReader.getPreviousPath(), (Throwable) e);
            return null;
        }
    }

    private final void write$com$google$gson$internal$sql$SqlTimeTypeAdapter(JsonWriter jsonWriter, Object obj) {
        String format;
        Time time = (Time) obj;
        if (time == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this) {
            format = ((SimpleDateFormat) this.format).format((Date) time);
        }
        jsonWriter.value(format);
    }

    @Override // com.google.gson.TypeAdapter
    public final Object read(JsonReader jsonReader) {
        Date parse;
        switch (this.$r8$classId) {
            case 0:
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String nextString = jsonReader.nextString();
                try {
                    synchronized (this) {
                        parse = ((SimpleDateFormat) this.format).parse(nextString);
                    }
                    return new java.sql.Date(parse.getTime());
                } catch (ParseException e) {
                    Gson$$ExternalSyntheticBUOutline0.m(Animation.CC.m21m("Failed parsing '", nextString, "' as SQL Date; at path "), (Object) jsonReader.getPreviousPath(), (Throwable) e);
                    return null;
                }
            case 1:
                return read$com$google$gson$internal$sql$SqlTimeTypeAdapter(jsonReader);
            default:
                Date date = (Date) ((TypeAdapter) this.format).read(jsonReader);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
        }
    }

    @Override // com.google.gson.TypeAdapter
    public final void write(JsonWriter jsonWriter, Object obj) {
        String format;
        switch (this.$r8$classId) {
            case 0:
                java.sql.Date date = (java.sql.Date) obj;
                if (date == null) {
                    jsonWriter.nullValue();
                    return;
                }
                synchronized (this) {
                    format = ((SimpleDateFormat) this.format).format((Date) date);
                }
                jsonWriter.value(format);
                return;
            case 1:
                write$com$google$gson$internal$sql$SqlTimeTypeAdapter(jsonWriter, obj);
                return;
            default:
                ((TypeAdapter) this.format).write(jsonWriter, (Timestamp) obj);
                return;
        }
    }

    public SqlDateTypeAdapter(TypeAdapter typeAdapter) {
        this.$r8$classId = 2;
        this.format = typeAdapter;
    }
}
