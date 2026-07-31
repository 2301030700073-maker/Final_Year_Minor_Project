package com.fsck.k9.ui.settings;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.core.util.DebugUtils;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.StableHolder;
import com.skydoves.landscapist.coil3.CoilImageKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutFragmentKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ Modifier f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Function f$5;
    public final /* synthetic */ int f$7;

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda5(Modifier modifier, Arrangement$Horizontal arrangement$Horizontal, Arrangement$Vertical arrangement$Vertical, int i, FlowRowOverflow flowRowOverflow, ComposableLambdaImpl composableLambdaImpl, int i2) {
        this.f$3 = modifier;
        this.f$0 = arrangement$Horizontal;
        this.f$1 = arrangement$Vertical;
        this.f$2 = i;
        this.f$4 = flowRowOverflow;
        this.f$5 = composableLambdaImpl;
        this.f$7 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Unit CoilImage$lambda$11;
        int i = this.$r8$classId;
        int i2 = this.f$2;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$4;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        Function function = this.f$5;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                DebugUtils.SectionContent((String) obj5, (String) obj4, this.f$2, this.f$3, (String) obj3, (Function0) function, (Composer) obj, updateChangedFlags, this.f$7);
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(this.f$7 | 1);
                OffsetKt.FlowRow(this.f$3, (Arrangement$Horizontal) obj5, (Arrangement$Vertical) obj4, this.f$2, (FlowRowOverflow) obj3, (ComposableLambdaImpl) function, (Composer) obj, updateChangedFlags2);
                return unit;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                ActionBar.CardFilled(this.f$3, (Shape) obj5, (CardColors) obj4, (CardElevation) obj3, (ComposableLambdaImpl) function, (Composer) obj, updateChangedFlags3, this.f$7);
                return unit;
            case 3:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i2 | 1);
                ActionBar.ErrorView((String) obj5, this.f$3, (String) obj4, (Function0) function, (Alignment) obj3, (Composer) obj, updateChangedFlags4, this.f$7);
                return unit;
            case 4:
                ((Integer) obj2).getClass();
                int updateChangedFlags5 = Updater.updateChangedFlags(i2 | 1);
                TextInputKt.InputLayout(this.f$3, (PaddingValues) obj3, (String) obj5, (String) obj4, (ComposableLambdaImpl) function, (Composer) obj, updateChangedFlags5, this.f$7);
                return unit;
            case 5:
                int intValue = ((Integer) obj2).intValue();
                CoilImage$lambda$11 = CoilImageKt.CoilImage$lambda$11((StableHolder) obj5, this.f$3, (ImageOptions) obj4, (StableHolder) obj3, (Function4) function, this.f$2, this.f$7, (Composer) obj, intValue);
                return CoilImage$lambda$11;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags6 = Updater.updateChangedFlags(i2 | 1);
                Cookie.Companion.SettingItemLayout((Function0) function, (ImageVector) obj5, this.f$3, (Function3) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, updateChangedFlags6, this.f$7);
                return unit;
        }
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda5(Modifier modifier, PaddingValues paddingValues, String str, String str2, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$3 = modifier;
        this.f$4 = paddingValues;
        this.f$0 = str;
        this.f$1 = str2;
        this.f$5 = composableLambdaImpl;
        this.f$2 = i;
        this.f$7 = i2;
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda5(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$3 = modifier;
        this.f$0 = shape;
        this.f$1 = cardColors;
        this.f$4 = cardElevation;
        this.f$5 = composableLambdaImpl;
        this.f$2 = i;
        this.f$7 = i2;
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda5(StableHolder stableHolder, Modifier modifier, ImageOptions imageOptions, StableHolder stableHolder2, Function4 function4, int i, int i2) {
        this.f$0 = stableHolder;
        this.f$3 = modifier;
        this.f$1 = imageOptions;
        this.f$4 = stableHolder2;
        this.f$5 = function4;
        this.f$2 = i;
        this.f$7 = i2;
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda5(String str, Modifier modifier, String str2, Function0 function0, Alignment alignment, int i, int i2) {
        this.f$0 = str;
        this.f$3 = modifier;
        this.f$1 = str2;
        this.f$5 = function0;
        this.f$4 = alignment;
        this.f$2 = i;
        this.f$7 = i2;
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda5(String str, String str2, int i, Modifier modifier, String str3, Function0 function0, int i2, int i3) {
        this.f$0 = str;
        this.f$1 = str2;
        this.f$2 = i;
        this.f$3 = modifier;
        this.f$4 = str3;
        this.f$5 = function0;
        this.f$7 = i3;
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda5(Function0 function0, ImageVector imageVector, Modifier modifier, Function3 function3, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$5 = function0;
        this.f$0 = imageVector;
        this.f$3 = modifier;
        this.f$1 = function3;
        this.f$4 = composableLambdaImpl;
        this.f$2 = i;
        this.f$7 = i2;
    }
}
