package org.schabi.newpipe.extractor.services.youtube.extractors;

import androidx.core.app.NotificationCompat$Style;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonTokener;
import j$.io.BufferedReaderRetargetClass;
import j$.util.stream.Collectors;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.subscription.SubscriptionExtractor$InvalidSourceException;
import org.schabi.newpipe.extractor.subscription.SubscriptionItem;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;
import org.schabi.newpipe.streams.DataReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeSubscriptionExtractor extends NotificationCompat$Style {
    public final List fromCsvInputStream(InputStream inputStream) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            try {
                List list = (List) BufferedReaderRetargetClass.lines(bufferedReader).skip(1L).map(new Utils$$ExternalSyntheticLambda1(7)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(21)).map(new Player$$ExternalSyntheticLambda41(this, 7)).filter(new YoutubeStreamExtractor$$ExternalSyntheticLambda6(22)).collect(Collectors.toUnmodifiableList());
                bufferedReader.close();
                return list;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | UncheckedIOException e) {
            throw new SubscriptionExtractor$InvalidSourceException("Error reading CSV file", e);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final List fromInputStream(DataReader.AnonymousClass1 anonymousClass1, String str) {
        boolean z;
        z = false;
        switch (str) {
            case "text/comma-separated-values":
            case "text/csv":
            case "csv":
                return fromCsvInputStream(anonymousClass1);
            case "application/zip":
            case "zip":
                try {
                    ZipInputStream zipInputStream = new ZipInputStream(anonymousClass1);
                    while (true) {
                        try {
                            ZipEntry nextEntry = zipInputStream.getNextEntry();
                            if (nextEntry == null) {
                                zipInputStream.close();
                                throw new SubscriptionExtractor$InvalidSourceException("Unable to find a valid subscriptions.csv file (try extracting and selecting the csv file)", null);
                            }
                            if (nextEntry.getName().toLowerCase().endsWith(".csv")) {
                                try {
                                    List fromCsvInputStream = fromCsvInputStream(zipInputStream);
                                    if (!fromCsvInputStream.isEmpty()) {
                                        zipInputStream.close();
                                        return fromCsvInputStream;
                                    }
                                } catch (ExtractionException unused) {
                                    continue;
                                }
                            }
                        } finally {
                        }
                    }
                } catch (IOException e) {
                    throw new SubscriptionExtractor$InvalidSourceException("Error reading contents of zip file", e);
                }
            case "application/json":
            case "json":
                try {
                    JsonArray jsonArray = (JsonArray) new JsonParser(new JsonTokener(anonymousClass1)).parse(JsonArray.class);
                    ArrayList arrayList = new ArrayList();
                    Iterator<E> it = jsonArray.iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        if (next instanceof JsonObject) {
                            JsonObject object = ((JsonObject) next).getObject("snippet");
                            String string = object.getObject("resourceId").getString("channelId", "");
                            if (string.length() == 24) {
                                arrayList.add(new SubscriptionItem("https://www.youtube.com/channel/".concat(string), ((StreamingService) this.mBigContentTitle).serviceId, object.getString("title", "")));
                            }
                        }
                        z = true;
                    }
                    if (z && arrayList.isEmpty()) {
                        throw new SubscriptionExtractor$InvalidSourceException("Found only invalid channel ids", null);
                    }
                    return arrayList;
                } catch (JsonParserException e2) {
                    throw new SubscriptionExtractor$InvalidSourceException("Invalid json input stream", e2);
                }
            default:
                throw new SubscriptionExtractor$InvalidSourceException("Unsupported content type: ".concat(str), null);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String getRelatedUrl() {
        return "https://takeout.google.com/takeout/custom/youtube";
    }
}
