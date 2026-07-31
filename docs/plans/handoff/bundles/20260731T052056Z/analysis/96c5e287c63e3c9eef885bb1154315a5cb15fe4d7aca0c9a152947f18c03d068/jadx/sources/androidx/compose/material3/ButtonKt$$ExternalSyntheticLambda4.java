package androidx.compose.material3;

import android.content.Context;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.donate.donationreminder.SelectableOption;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.onboarding.InitialOnboardingScreenKt;
import org.wikipedia.readinglist.ReadingListFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ButtonKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$7;

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda4(Context context, WikiSite wikiSite, OnThisDay.Event event, boolean z, ComposableLambdaImpl composableLambdaImpl, Function1 function1, Function2 function2, int i) {
        this.f$0 = context;
        this.f$1 = wikiSite;
        this.f$3 = event;
        this.f$2 = z;
        this.f$4 = composableLambdaImpl;
        this.f$5 = function1;
        this.f$7 = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$7;
        Object obj4 = this.f$5;
        Object obj5 = this.f$0;
        Object obj6 = this.f$4;
        Object obj7 = this.f$3;
        Object obj8 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(805306417);
                CardKt.ElevatedButton((Function0) obj5, (Modifier) obj8, this.f$2, (Shape) obj7, (ButtonColors) obj6, (ButtonElevation) obj4, (PaddingValues) obj3, (GapComposer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(24577);
                DonationReminderScreenKt.ReadFrequencyView((SelectableOption) obj8, this.f$2, (String) obj7, (Function1) obj6, (Function0) obj5, (Function1) obj4, (Function1) obj3, (GapComposer) obj, updateChangedFlags2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(24577);
                ReadingListFragment.MultiSelectCallback.EventRow((Context) obj5, (WikiSite) obj8, (OnThisDay.Event) obj7, this.f$2, (ComposableLambdaImpl) obj6, (Function1) obj4, (Function2) obj3, (GapComposer) obj, updateChangedFlags3);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(1);
                InitialOnboardingScreenKt.AppOnboardingScreen((Modifier) obj8, (AppLanguageState) obj7, (List) obj6, this.f$2, (Function0) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, updateChangedFlags4);
                break;
        }
        return unit;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda4(Modifier modifier, AppLanguageState appLanguageState, List list, boolean z, Function0 function0, Function0 function02, Function0 function03, int i) {
        this.f$1 = modifier;
        this.f$3 = appLanguageState;
        this.f$4 = list;
        this.f$2 = z;
        this.f$0 = function0;
        this.f$5 = function02;
        this.f$7 = function03;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda4(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, ButtonElevation buttonElevation, PaddingValues paddingValues, int i) {
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$3 = shape;
        this.f$4 = buttonColors;
        this.f$5 = buttonElevation;
        this.f$7 = paddingValues;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda4(SelectableOption selectableOption, boolean z, String str, Function1 function1, Function0 function0, Function1 function12, Function1 function13, int i) {
        this.f$1 = selectableOption;
        this.f$2 = z;
        this.f$3 = str;
        this.f$4 = function1;
        this.f$0 = function0;
        this.f$5 = function12;
        this.f$7 = function13;
    }
}
