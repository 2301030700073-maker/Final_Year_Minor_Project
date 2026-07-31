package org.jsoup.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import j$.time.LocalDate;
import j$.time.format.DateTimeFormatter;
import j$.time.format.DateTimeParseException;
import j$.util.Optional;
import java.util.Locale;
import java.util.function.Supplier;
import org.jsoup.internal.StringUtil;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.services.youtube.extractors.YoutubeStreamExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StringUtil$$ExternalSyntheticLambda1 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ StringUtil$$ExternalSyntheticLambda1(YoutubeStreamExtractor youtubeStreamExtractor, String str) {
        this.$r8$classId = 5;
        this.f$0 = str;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        int i = this.$r8$classId;
        String str = this.f$0;
        switch (i) {
            case 0:
                return new StringUtil.StringJoiner(str);
            case 1:
                return new ExtractionException(Modifier.CC.m("There's no service with the name = \"", str, "\""));
            case 2:
                return new IllegalArgumentException("Not a localization code: ".concat(str));
            case 3:
                return new ParsingException(Owner.CC.m("Unable to parse the date: ", str));
            case 4:
                return new ParsingException("Cannot convert this language to a locale: ".concat(str));
            case 5:
                try {
                    return Optional.of(LocalDate.parse(str, DateTimeFormatter.ofPattern("dd MMM yyyy", Locale.ENGLISH)));
                } catch (DateTimeParseException unused) {
                    return Optional.empty();
                }
            case 6:
                return new ParsingException(Modifier.CC.m("Could not parse upload date \"", str, "\""));
            default:
                return new ParsingException(Owner.CC.m("not a valid locale language code: ", str));
        }
    }

    public /* synthetic */ StringUtil$$ExternalSyntheticLambda1(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }
}
