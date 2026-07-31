package org.schabi.newpipe.util;

import androidx.compose.ui.node.Owner;
import com.grack.nanojson.JsonObject;
import j$.util.function.Function$CC;
import java.util.Locale;
import java.util.function.Function;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.utils.ImageSuffix;
import org.schabi.newpipe.settings.preferencesearch.PreferenceFuzzySearchFunction;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class ListHelper$$ExternalSyntheticLambda3 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ ListHelper$$ExternalSyntheticLambda3(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i = this.$r8$classId;
        String str = this.f$0;
        switch (i) {
            case 0:
                return Boolean.valueOf(((Locale) obj).getISO3Language().equals(str));
            case 1:
                ImageSuffix imageSuffix = (ImageSuffix) obj;
                return new Image(Owner.CC.m$1(str, imageSuffix.getSuffix()), imageSuffix.getHeight(), imageSuffix.getWidth(), imageSuffix.getResolutionLevel());
            case 2:
                return ((JsonObject) obj).getObject(str).getString("url", "");
            case 3:
                JsonObject jsonObject = (JsonObject) obj;
                return new Image(Owner.CC.m$1(str, jsonObject.getString("path", null)), -1, jsonObject.getInt(-1, "width"), Image.ResolutionLevel.UNKNOWN);
            case 4:
                ImageSuffix imageSuffix2 = (ImageSuffix) obj;
                return new Image(String.format(str, imageSuffix2.getSuffix()), imageSuffix2.getHeight(), imageSuffix2.getWidth(), imageSuffix2.getResolutionLevel());
            case 5:
                return str;
            case 6:
                ImageSuffix imageSuffix3 = (ImageSuffix) obj;
                return new Image(Owner.CC.m$1(str, imageSuffix3.getSuffix()), imageSuffix3.getHeight(), imageSuffix3.getWidth(), imageSuffix3.getResolutionLevel());
            case 7:
                return ((JsonObject) obj).getObject(str);
            case 8:
                return new PreferenceFuzzySearchFunction.FuzzySearchGeneralDTO((PreferenceSearchItem) obj, str);
            default:
                return new PreferenceFuzzySearchFunction.FuzzySearchSpecificDTO((PreferenceSearchItem) obj, str);
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
