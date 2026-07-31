package org.schabi.newpipe.settings.preferencesearch;

import android.text.TextUtils;
import androidx.compose.ui.Modifier;
import j$.util.Collection;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.image.ImageStrategy$$ExternalSyntheticLambda6;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PreferenceFuzzySearchFunction {
    public static final ByteString.Companion FUZZY_SCORE;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FuzzySearchGeneralDTO {
        public final PreferenceSearchItem item;
        public final float score;

        public FuzzySearchGeneralDTO(PreferenceSearchItem preferenceSearchItem, String str) {
            this.item = preferenceSearchItem;
            this.score = PreferenceFuzzySearchFunction.FUZZY_SCORE.fuzzyScore(TextUtils.join(";", Jsoup.listOf((Object[]) new String[]{preferenceSearchItem.title, preferenceSearchItem.summary, preferenceSearchItem.entries, preferenceSearchItem.breadcrumbs})), str).intValue();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FuzzySearchSpecificDTO {
        public static final Map WEIGHT_MAP;
        public final PreferenceSearchItem item;
        public final double score;

        static {
            ListHelper$$ExternalSyntheticLambda0 listHelper$$ExternalSyntheticLambda0 = new ListHelper$$ExternalSyntheticLambda0(17);
            Float valueOf = Float.valueOf(1.5f);
            ListHelper$$ExternalSyntheticLambda0 listHelper$$ExternalSyntheticLambda02 = new ListHelper$$ExternalSyntheticLambda0(18);
            Float valueOf2 = Float.valueOf(1.0f);
            ListHelper$$ExternalSyntheticLambda0 listHelper$$ExternalSyntheticLambda03 = new ListHelper$$ExternalSyntheticLambda0(19);
            AbstractMap.SimpleEntry simpleEntry = new AbstractMap.SimpleEntry(listHelper$$ExternalSyntheticLambda0, valueOf);
            AbstractMap.SimpleEntry simpleEntry2 = new AbstractMap.SimpleEntry(listHelper$$ExternalSyntheticLambda02, valueOf2);
            AbstractMap.SimpleEntry simpleEntry3 = new AbstractMap.SimpleEntry(listHelper$$ExternalSyntheticLambda03, valueOf2);
            Map.Entry[] entryArr = {simpleEntry, simpleEntry2, simpleEntry3};
            HashMap hashMap = new HashMap(3);
            for (int i = 0; i < 3; i++) {
                Map.Entry entry = entryArr[i];
                Object key = entry.getKey();
                Objects.requireNonNull(key);
                Object value = entry.getValue();
                Objects.requireNonNull(value);
                if (hashMap.put(key, value) != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(key, "duplicate key: "));
                    return;
                }
            }
            WEIGHT_MAP = DesugarCollections.unmodifiableMap(hashMap);
        }

        public FuzzySearchSpecificDTO(PreferenceSearchItem preferenceSearchItem, String str) {
            this.item = preferenceSearchItem;
            this.score = ((Double) Collection.EL.stream(WEIGHT_MAP.entrySet()).map(new Player$$ExternalSyntheticLambda41(preferenceSearchItem, 10)).filter(new Player$$ExternalSyntheticLambda48(21)).collect(Collectors.averagingDouble(new ImageStrategy$$ExternalSyntheticLambda6(str, 1)))).doubleValue();
        }
    }

    static {
        Locale locale = Locale.ROOT;
        ByteString.Companion companion = new ByteString.Companion(7);
        if (locale != null) {
            FUZZY_SCORE = companion;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Locale must not be null");
        }
    }
}
