package org.schabi.newpipe.settings.tabs;

import com.android.tools.r8.RecordTag;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.util.DesugarCollections;
import j$.util.stream.Collectors;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.settings.tabs.Tab;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TabsJsonHelper {
    public static final List FALLBACK_INITIAL_TABS_LIST;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InvalidJsonException extends Exception {
    }

    static {
        int i = 0;
        Object[] objArr = {Tab.Type.DEFAULT_KIOSK.getTab(), Tab.Type.FEED.getTab(), Tab.Type.SUBSCRIPTIONS.getTab(), Tab.Type.BOOKMARKS.getTab()};
        ArrayList arrayList = new ArrayList(4);
        while (i < 4) {
            Object obj = objArr[i];
            i = RecordTag.m(obj, arrayList, obj, i, 1);
        }
        FALLBACK_INITIAL_TABS_LIST = DesugarCollections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List getTabsFromJson(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                JsonObject jsonObject = (JsonObject) JsonParser.object().from(str);
                if (!jsonObject.containsKey("tabs")) {
                    throw new InvalidJsonException("JSON doesn't contain \"tabs\" array");
                }
                V v = jsonObject.get("tabs");
                List list = (List) (v instanceof JsonArray ? (JsonArray) v : null).streamAsJsonObjects().map(new ListHelper$$ExternalSyntheticLambda0(20)).filter(new Player$$ExternalSyntheticLambda48(22)).collect(Collectors.toUnmodifiableList());
                if (!list.isEmpty()) {
                    return list;
                }
            } catch (JsonParserException e) {
                throw new InvalidJsonException(e);
            }
        }
        return FALLBACK_INITIAL_TABS_LIST;
    }
}
