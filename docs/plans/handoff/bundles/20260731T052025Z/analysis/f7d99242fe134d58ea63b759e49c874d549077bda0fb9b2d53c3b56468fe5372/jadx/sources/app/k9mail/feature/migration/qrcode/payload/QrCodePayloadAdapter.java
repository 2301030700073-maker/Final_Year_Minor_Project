package app.k9mail.feature.migration.qrcode.payload;

import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.feature.migration.qrcode.payload.QrCodeData;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonUtf8Reader;
import com.squareup.moshi.JsonUtf8Writer;
import kotlin.collections.builders.ListBuilder;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodePayloadAdapter extends JsonAdapter {
    @Override // com.squareup.moshi.JsonAdapter
    public final Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
        jsonUtf8Reader.beginArray();
        int nextInt = jsonUtf8Reader.nextInt();
        String str = null;
        if (nextInt != 1) {
            Log.d("Unsupported version: %s", Integer.valueOf(nextInt));
            return null;
        }
        jsonUtf8Reader.beginArray();
        int nextInt2 = jsonUtf8Reader.nextInt();
        int nextInt3 = jsonUtf8Reader.nextInt();
        while (jsonUtf8Reader.hasNext()) {
            jsonUtf8Reader.readJsonValue();
        }
        jsonUtf8Reader.endArray();
        QrCodeData.Misc misc = new QrCodeData.Misc(nextInt2, nextInt3);
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        while (true) {
            jsonUtf8Reader.beginArray();
            int nextInt4 = jsonUtf8Reader.nextInt();
            String nextString = jsonUtf8Reader.nextString();
            int nextInt5 = jsonUtf8Reader.nextInt();
            int nextInt6 = jsonUtf8Reader.nextInt();
            int nextInt7 = jsonUtf8Reader.nextInt();
            String nextString2 = jsonUtf8Reader.nextString();
            String nextString3 = jsonUtf8Reader.hasNext() ? jsonUtf8Reader.nextString() : str;
            String nextString4 = jsonUtf8Reader.hasNext() ? jsonUtf8Reader.nextString() : str;
            while (jsonUtf8Reader.hasNext()) {
                jsonUtf8Reader.readJsonValue();
            }
            jsonUtf8Reader.endArray();
            nextString.getClass();
            nextString2.getClass();
            QrCodeData.IncomingServer incomingServer = new QrCodeData.IncomingServer(nextInt4, nextString, nextInt5, nextInt6, nextInt7, nextString2, nextString3, nextString4);
            jsonUtf8Reader.beginArray();
            ListBuilder createListBuilder2 = IntOffsetKt.createListBuilder();
            while (true) {
                jsonUtf8Reader.beginArray();
                jsonUtf8Reader.beginArray();
                int nextInt8 = jsonUtf8Reader.nextInt();
                String nextString5 = jsonUtf8Reader.nextString();
                int nextInt9 = jsonUtf8Reader.nextInt();
                int nextInt10 = jsonUtf8Reader.nextInt();
                int nextInt11 = jsonUtf8Reader.nextInt();
                String nextString6 = jsonUtf8Reader.nextString();
                String nextString7 = jsonUtf8Reader.hasNext() ? jsonUtf8Reader.nextString() : str;
                while (jsonUtf8Reader.hasNext()) {
                    jsonUtf8Reader.readJsonValue();
                }
                jsonUtf8Reader.endArray();
                ListBuilder createListBuilder3 = IntOffsetKt.createListBuilder();
                do {
                    jsonUtf8Reader.beginArray();
                    String nextString8 = jsonUtf8Reader.nextString();
                    String nextString9 = jsonUtf8Reader.nextString();
                    while (jsonUtf8Reader.hasNext()) {
                        jsonUtf8Reader.readJsonValue();
                    }
                    jsonUtf8Reader.endArray();
                    nextString8.getClass();
                    nextString9.getClass();
                    createListBuilder3.add(new QrCodeData.Identity(nextString8, nextString9));
                } while (jsonUtf8Reader.hasNext());
                ListBuilder build = IntOffsetKt.build(createListBuilder3);
                jsonUtf8Reader.endArray();
                nextString5.getClass();
                nextString6.getClass();
                createListBuilder2.add(new QrCodeData.OutgoingServer(nextInt8, nextString5, nextInt9, nextInt10, nextInt11, nextString6, nextString7, build));
                if (!jsonUtf8Reader.hasNext()) {
                    break;
                }
                str = null;
            }
            ListBuilder build2 = IntOffsetKt.build(createListBuilder2);
            jsonUtf8Reader.endArray();
            createListBuilder.add(new QrCodeData.Account(incomingServer, build2));
            if (!jsonUtf8Reader.hasNext()) {
                ListBuilder build3 = IntOffsetKt.build(createListBuilder);
                jsonUtf8Reader.endArray();
                return new QrCodeData(nextInt, misc, build3);
            }
            str = null;
        }
    }

    @Override // com.squareup.moshi.JsonAdapter
    public final void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj) {
        throw new UnsupportedOperationException("not implemented");
    }
}
