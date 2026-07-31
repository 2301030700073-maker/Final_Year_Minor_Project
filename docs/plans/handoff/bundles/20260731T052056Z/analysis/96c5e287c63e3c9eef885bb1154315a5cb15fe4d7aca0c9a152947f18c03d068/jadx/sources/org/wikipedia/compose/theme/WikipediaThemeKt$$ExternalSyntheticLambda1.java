package org.wikipedia.compose.theme;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import java.util.Date;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.jsoup.Jsoup;
import org.wikipedia.activitytab.timeline.TimelineModuleKt;
import org.wikipedia.compose.components.OnboardingItem;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.dataclient.restbase.RbDefinition$Definition;
import org.wikipedia.theme.Theme;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WikipediaThemeKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ WikipediaThemeKt$$ExternalSyntheticLambda1(RbDefinition$Definition rbDefinition$Definition, int i, Function1 function1, int i2) {
        this.$r8$classId = 3;
        this.f$0 = rbDefinition$Definition;
        this.f$2 = i;
        this.f$1 = function1;
        this.f$3 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        Object obj3 = this.f$1;
        int i3 = this.f$2;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                Cache.Companion.BaseTheme((Theme) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(i3 | 1), i2);
                break;
            case 1:
                ((Integer) obj2).getClass();
                TimelineModuleKt.TimelineDateSeparator((Date) obj4, (Modifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(i3 | 1), i2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                TabsBoxKt.OnboardingListItem((Modifier) obj4, (OnboardingItem) obj3, (GapComposer) obj, Updater.updateChangedFlags(i3 | 1), i2);
                break;
            default:
                ((Integer) obj2).getClass();
                Jsoup.DefinitionWithExamples((RbDefinition$Definition) obj4, i3, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ WikipediaThemeKt$$ExternalSyntheticLambda1(Object obj, Object obj2, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = i;
        this.f$3 = i2;
    }
}
