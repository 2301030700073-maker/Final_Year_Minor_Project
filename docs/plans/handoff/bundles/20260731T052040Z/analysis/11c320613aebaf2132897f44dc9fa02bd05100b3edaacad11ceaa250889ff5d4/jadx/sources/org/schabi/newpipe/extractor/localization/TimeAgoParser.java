package org.schabi.newpipe.extractor.localization;

import android.text.TextUtils;
import android.util.Log;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.Modifier;
import j$.time.LocalDateTime;
import j$.time.temporal.ChronoUnit;
import j$.util.Collection;
import j$.util.Comparator;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Pattern;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda1;
import org.jsoup.nodes.Printer;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.mozilla.javascript.typedarrays.NativeTypedArrayView$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.stream.Frameset;
import org.schabi.newpipe.extractor.timeago.PatternsHolder;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.settings.preferencesearch.PreferenceFuzzySearchFunction;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda3;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda6;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TimeAgoParser {
    public Object now;
    public final Object patternsHolder;

    public static /* synthetic */ boolean $r8$lambda$SP1BbvDhrFN0miwMrbvlG8EzTyg(TimeAgoParser timeAgoParser, String str, Map.Entry entry) {
        timeAgoParser.getClass();
        return Collection.EL.stream((java.util.Collection) entry.getValue()).anyMatch(new TimeAgoParser$$ExternalSyntheticLambda0(timeAgoParser, str, 1));
    }

    public TimeAgoParser() {
        this.patternsHolder = new SparseArrayCompat((Object) null);
        this.now = UUID.randomUUID();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x014a A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void generateDataFrom(final org.schabi.newpipe.extractor.stream.Frameset r21, java.util.UUID r22) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.localization.TimeAgoParser.generateDataFrom(org.schabi.newpipe.extractor.stream.Frameset, java.util.UUID):void");
    }

    public DateWrapper getResultFor(int i, ChronoUnit chronoUnit) {
        ChronoUnit chronoUnit2 = ChronoUnit.YEARS;
        LocalDateTime localDateTime = (LocalDateTime) this.now;
        LocalDateTime minusDays = chronoUnit == chronoUnit2 ? localDateTime.minusYears(i).minusDays(1L) : localDateTime.z(i, chronoUnit);
        boolean isDateBased = chronoUnit.isDateBased();
        if (isDateBased) {
            minusDays = minusDays.truncatedTo(ChronoUnit.DAYS);
        }
        return new DateWrapper(minusDays, isDateBased);
    }

    public DateWrapper parse(String str) {
        int i;
        PatternsHolder patternsHolder = (PatternsHolder) this.patternsHolder;
        for (Map.Entry<ChronoUnit, Map<String, Integer>> entry : patternsHolder.specialCases().entrySet()) {
            ChronoUnit key = entry.getKey();
            for (Map.Entry<String, Integer> entry2 : entry.getValue().entrySet()) {
                String key2 = entry2.getKey();
                int intValue = entry2.getValue().intValue();
                if (textualDateMatches(str, key2)) {
                    return getResultFor(intValue, key);
                }
            }
        }
        try {
            i = Integer.parseInt(str.replaceAll("\\D+", ""));
        } catch (NumberFormatException unused) {
            i = 1;
        }
        return getResultFor(i, (ChronoUnit) Collection.EL.stream(patternsHolder.asMap().entrySet()).filter(new TimeAgoParser$$ExternalSyntheticLambda0(this, str, 0)).map(new Nodes$$ExternalSyntheticLambda0(22)).findFirst().orElseThrow(new StringUtil$$ExternalSyntheticLambda1(str, 3)));
    }

    public void resetFromAsync(int i, List list, UUID uuid) {
        Frameset frameset;
        Log.d("SeekbarPrevThumbHolder", "Clearing seekbarPreviewData");
        synchronized (((SparseArrayCompat) this.patternsHolder)) {
            ((SparseArrayCompat) this.patternsHolder).clear();
        }
        if (i == 2) {
            Log.d("SeekbarPrevThumbHolder", "Not processing seekbarPreviewData due to settings");
            return;
        }
        if (i == 0) {
            Log.d("SeekbarPrevThumbHolder", "Strategy for seekbarPreviewData: high quality");
            frameset = (Frameset) Collection.EL.stream(list).max(Comparator.CC.comparingInt(new ListHelper$$ExternalSyntheticLambda6(5))).orElse(null);
        } else {
            Log.d("SeekbarPrevThumbHolder", "Strategy for seekbarPreviewData: low quality");
            frameset = (Frameset) Collection.EL.stream(list).min(Comparator.CC.comparingInt(new ListHelper$$ExternalSyntheticLambda6(6))).orElse(null);
        }
        if (frameset == null) {
            Log.d("SeekbarPrevThumbHolder", "No frameset was found to fill seekbarPreviewData");
            return;
        }
        Log.d("SeekbarPrevThumbHolder", "Frameset quality info: [width=" + frameset.getFrameWidth() + ", heigh=" + frameset.getFrameHeight() + "]");
        if (((UUID) this.now).equals(uuid)) {
            generateDataFrom(frameset, uuid);
        }
    }

    public List searchFor(String str) {
        if (TextUtils.isEmpty(str)) {
            return Collections.EMPTY_LIST;
        }
        PreferenceFuzzySearchFunction preferenceFuzzySearchFunction = (PreferenceFuzzySearchFunction) ((Printer) this.now).root;
        Stream stream = Collection.EL.stream((ArrayList) this.patternsHolder);
        preferenceFuzzySearchFunction.getClass();
        return (List) stream.map(new ListHelper$$ExternalSyntheticLambda3(str, 8)).filter(new NewPipe$$ExternalSyntheticLambda0(((str.length() + 1) * 3) - 2, 3)).map(new ListHelper$$ExternalSyntheticLambda0(15)).map(new ListHelper$$ExternalSyntheticLambda3(str, 9)).sorted(Comparator.EL.reversed(Comparator.CC.comparingDouble(new NativeTypedArrayView$$ExternalSyntheticLambda0(1)))).map(new ListHelper$$ExternalSyntheticLambda0(16)).limit(20L).collect(Collectors.toList());
    }

    public boolean textualDateMatches(String str, String str2) {
        PatternsHolder patternsHolder = (PatternsHolder) this.patternsHolder;
        if (str.equals(str2)) {
            return true;
        }
        if (patternsHolder.wordSeparator().isEmpty()) {
            return str.toLowerCase().contains(str2.toLowerCase());
        }
        String quote = Pattern.quote(str2.toLowerCase());
        String quote2 = patternsHolder.wordSeparator().equals(" ") ? "[ \\t\\xA0\\u1680\\u180e\\u2000-\\u200a\\u202f\\u205f\\u3000\\d]" : Pattern.quote(patternsHolder.wordSeparator());
        StringBuilder sb = new StringBuilder("(^|");
        sb.append(quote2);
        sb.append(")");
        sb.append(quote);
        sb.append("($|");
        return Parser.isMatch(str.toLowerCase(), Pattern.compile(Modifier.CC.m(sb, quote2, ")")));
    }

    public TimeAgoParser(Printer printer) {
        this.patternsHolder = new ArrayList();
        this.now = printer;
    }

    public TimeAgoParser(PatternsHolder patternsHolder, LocalDateTime localDateTime) {
        this.patternsHolder = patternsHolder;
        this.now = localDateTime;
    }
}
