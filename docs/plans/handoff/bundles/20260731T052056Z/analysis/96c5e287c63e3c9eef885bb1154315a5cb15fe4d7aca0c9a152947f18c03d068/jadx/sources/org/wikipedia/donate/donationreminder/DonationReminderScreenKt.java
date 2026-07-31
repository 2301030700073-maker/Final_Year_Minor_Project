package org.wikipedia.donate.donationreminder;

import android.content.Context;
import android.content.Intent;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.ButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda5;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ListItemDefaults;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipDefaults;
import androidx.compose.material3.TooltipDefaults$rememberPlainTooltipPositionProvider$1$1;
import androidx.compose.material3.TooltipKt;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.internal.BasicTooltipDefaults;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;
import coil3.disk.DiskLruCache$launchCleanup$1;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.util.List;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5;
import org.wikipedia.compose.components.InlinePosition;
import org.wikipedia.compose.components.OnboardingKt$$ExternalSyntheticLambda0;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.components.menu.PageOverflowMenuKt$$ExternalSyntheticLambda3;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda5;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda10;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DonationReminderScreenKt {
    public static final ComposableLambdaImpl lambda$118783944 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(20), false, 118783944);
    public static final ComposableLambdaImpl lambda$1054573454 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(21), false, 1054573454);
    public static final ComposableLambdaImpl lambda$1933540096 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(19), false, 1933540096);

    /* renamed from: lambda$-705128517, reason: not valid java name */
    public static final ComposableLambdaImpl f31lambda$705128517 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(22), false, -705128517);

    /* renamed from: lambda$-1489167543, reason: not valid java name */
    public static final ComposableLambdaImpl f30lambda$1489167543 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(23), false, -1489167543);
    public static final ComposableLambdaImpl lambda$1091446873 = new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(24), false, 1091446873);
    public static final ComposableLambdaImpl lambda$959995468 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(20), false, 959995468);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle$Event.values().length];
            try {
                iArr[Lifecycle$Event.ON_PAUSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle$Event.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(25), false, -191372203);
        new ComposableLambdaImpl(new CoroutineContextKt$$ExternalSyntheticLambda0(26), false, -181601642);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CustomInputDialog(androidx.compose.ui.Modifier r24, java.lang.String r25, boolean r26, java.lang.String r27, kotlin.jvm.functions.Function1 r28, kotlin.jvm.functions.Function0 r29, kotlin.jvm.functions.Function2 r30, kotlin.jvm.functions.Function2 r31, kotlin.jvm.functions.Function1 r32, androidx.compose.runtime.GapComposer r33, int r34, int r35) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.donate.donationreminder.DonationReminderScreenKt.CustomInputDialog(androidx.compose.ui.Modifier, java.lang.String, boolean, java.lang.String, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void DonationAmountView(SelectableOption selectableOption, String str, boolean z, String str2, Function1 function1, Function0 function0, Function1 function12, Function1 function13, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        selectableOption.getClass();
        str2.getClass();
        function1.getClass();
        function0.getClass();
        function12.getClass();
        function13.getClass();
        gapComposer2.startRestartGroup(526428979);
        int i2 = i | (gapComposer2.changedInstance(selectableOption) ? 4 : 2) | (gapComposer2.changed(str) ? 32 : 16) | (gapComposer2.changed(z) ? 256 : 128) | (gapComposer2.changed(str2) ? 2048 : 1024) | (gapComposer2.changedInstance(function1) ? 16384 : 8192) | (gapComposer2.changedInstance(function12) ? 1048576 : 524288) | (gapComposer2.changedInstance(function13) ? 8388608 : 4194304);
        byte b = 0;
        if (gapComposer2.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            int i3 = i2 << 3;
            OptionSelector(UtilsKt.stringResource(R.string.donation_reminders_settings_amount_label, gapComposer2), selectableOption, R.drawable.credit_card_heart_24, function1, false, gapComposer2, (i3 & 112) | ((i2 >> 3) & 7168), 16);
            if (z) {
                gapComposer2.startReplaceGroup(1920742794);
                CustomInputDialog(null, UtilsKt.stringResource(R.string.donation_reminders_settings_amount_label, gapComposer2), true, str2, function12, function0, Expect_jvmKt.rememberComposableLambda(448305374, new HomeScreenKt$$ExternalSyntheticLambda30(str, 6, b), gapComposer2), null, function13, gapComposer2, ((i2 >> 6) & 57344) | (i2 & 7168) | 1573248 | 196608 | (i3 & 234881024), 129);
                gapComposer2 = gapComposer2;
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(1921307087);
                gapComposer2.end(false);
            }
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ChipKt$$ExternalSyntheticLambda5(selectableOption, str, z, str2, function1, function0, function12, function13, i);
        }
    }

    public static final void DonationHeader(Modifier modifier, GapComposer gapComposer, int i) {
        int i2;
        Modifier modifier2;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(923729208);
        int i3 = i | 6;
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, companion);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TabsBoxKt.TextWithInlineElement(StringsKt__StringsJVMKt.replace$default(UtilsKt.stringResource(R.string.donation_reminders_settings_thank_you_message, gapComposer2), "%%", "%"), InlinePosition.END, new Placeholder(ContextsKt.getSp(20), ContextsKt.getSp(20)), null, gapComposer2, 24624);
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 16.0f));
            String stringResource = UtilsKt.stringResource(R.string.donation_reminders_settings_donation_info, gapComposer2);
            TextStyle textStyle = ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodySmall;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(stringResource, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).placeholderColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 0, 0, 131066);
            gapComposer2 = gapComposer;
            modifier2 = companion;
            CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 24.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor, gapComposer2, 6, 2);
            i2 = 1;
            gapComposer2.end(true);
        } else {
            i2 = 1;
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda10(modifier2, i, i2);
        }
    }

    public static final void DonationReminderAppBar(Modifier modifier, Function0 function0, List list, GapComposer gapComposer, int i) {
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        boolean z;
        MutableState mutableState;
        int i2;
        MutableState mutableState2;
        GapComposer gapComposer2 = gapComposer;
        function0.getClass();
        gapComposer2.startRestartGroup(-1997789399);
        int i3 = i | (gapComposer2.changed(modifier) ? 4 : 2);
        if ((i & 48) == 0) {
            i3 |= gapComposer2.changedInstance(function0) ? 32 : 16;
        }
        int i4 = i3 | (gapComposer2.changedInstance(list) ? 256 : 128);
        if (gapComposer2.shouldExecute(i4 & 1, (i4 & 147) != 146)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState3 = (MutableState) rememberedValue;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer2, 6);
            long j = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$13);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$14);
            Integer valueOf = Integer.valueOf(i5);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$15);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$16);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer2, 54);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, companion);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$13);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$14);
            Animation.CC.m(i6, gapComposer2, composeUiNode$Companion$SetModifier$15, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$16);
            Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, companion, null, function0, false);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_back_black_24dp, 0, gapComposer2), null, m51clickableoSLSa3U$default, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, gapComposer2, 56, 0);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = composeUiNode$Companion$SetModifier$14;
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.donation_reminders_settings_title, gapComposer2), new LayoutWeightElement(1.0f, true), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, new TextStyle(0L, ContextsKt.getSp(20), FontWeight.Bold, null, 0L, 0, ContextsKt.getSp(20), 16646137), gapComposer, 0, 12582912, 131064);
            GapComposer gapComposer3 = gapComposer;
            if (list.isEmpty()) {
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$15;
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$16;
                staticProvidableCompositionLocal = staticProvidableCompositionLocal2;
                z = true;
                gapComposer3.startReplaceGroup(-1812950637);
                gapComposer3.end(false);
            } else {
                gapComposer3.startReplaceGroup(-1814680437);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                long j3 = gapComposer3.compositeKeyHashCode;
                int i7 = (int) (j3 ^ (j3 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, companion);
                gapComposer3.startReusableNode();
                if (gapComposer3.inserting) {
                    gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer3.useNode();
                }
                Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$13);
                Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$17);
                Animation.CC.m(i7, gapComposer3, composeUiNode$Companion$SetModifier$15, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$12);
                Updater.m327setimpl(gapComposer3, materializeModifier3, composeUiNode$Companion$SetModifier$16);
                Object rememberedValue2 = gapComposer3.rememberedValue();
                if (rememberedValue2 == neverEqualPolicy) {
                    mutableState = mutableState3;
                    i2 = 15;
                    rememberedValue2 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, i2);
                    gapComposer3.updateRememberedValue(rememberedValue2);
                } else {
                    mutableState = mutableState3;
                    i2 = 15;
                }
                MutableState mutableState4 = mutableState;
                composeUiNode$Companion$SetModifier$17 = composeUiNode$Companion$SetModifier$17;
                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_more_vert_white_24dp, 0, gapComposer3), null, ImageKt.m51clickableoSLSa3U$default(i2, companion, null, (Function0) rememberedValue2, false), ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal2)).primaryColor, gapComposer3, 56, 0);
                long j4 = ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal2)).paperColor;
                boolean booleanValue = ((Boolean) mutableState4.getValue()).booleanValue();
                Object rememberedValue3 = gapComposer3.rememberedValue();
                if (rememberedValue3 == neverEqualPolicy) {
                    mutableState2 = mutableState4;
                    rememberedValue3 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState2, 16);
                    gapComposer3.updateRememberedValue(rememberedValue3);
                } else {
                    mutableState2 = mutableState4;
                }
                staticProvidableCompositionLocal = staticProvidableCompositionLocal2;
                z = true;
                ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$15;
                composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$16;
                AndroidMenu_androidKt.m252DropdownMenuIlH_yew(booleanValue, (Function0) rememberedValue3, null, 0L, null, null, null, j4, RecyclerView.DECELERATION_RATE, Expect_jvmKt.rememberComposableLambda(236086345, new PageOverflowMenuKt$$ExternalSyntheticLambda3(list, mutableState2, 1), gapComposer3), gapComposer, 48, 1916);
                gapComposer3 = gapComposer;
                gapComposer3.end(true);
                gapComposer3.end(false);
            }
            gapComposer3.end(z);
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, z, new EasingKt$$ExternalSyntheticLambda0(10));
            BiasAlignment.Vertical vertical = Alignment.Companion.Top;
            RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, vertical, gapComposer3, 6);
            long j5 = gapComposer3.compositeKeyHashCode;
            int i8 = (int) (j5 ^ (j5 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer3, companion);
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            Updater.m327setimpl(gapComposer3, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$13);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = composeUiNode$Companion$SetModifier$17;
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$18);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$19 = composeUiNode$Companion$SetModifier$1;
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$13 = ownerSnapshotObserver$onCommitAffectingLayout$1;
            Animation.CC.m(i8, gapComposer3, composeUiNode$Companion$SetModifier$19, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$13);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$110 = composeUiNode$Companion$SetModifier$12;
            Updater.m327setimpl(gapComposer3, materializeModifier4, composeUiNode$Companion$SetModifier$110);
            BoxKt.Box(SizeKt.m145size3ABfNKs(companion, 24.0f), gapComposer3, 6);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = staticProvidableCompositionLocal;
            Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(ImageKt.m46backgroundbw27NRU(companion, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal3)).additionColor, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f)), 8.0f, 4.0f);
            RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(OffsetKt.f5Start, vertical, gapComposer3, 0);
            long j6 = gapComposer3.compositeKeyHashCode;
            int i9 = (int) (j6 ^ (j6 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer3.currentCompositionLocalScope();
            Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer3, m133paddingVpY3zN4);
            gapComposer3.startReusableNode();
            if (gapComposer3.inserting) {
                gapComposer3.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer3.useNode();
            }
            Updater.m327setimpl(gapComposer3, rowMeasurePolicy3, composeUiNode$Companion$SetModifier$13);
            Updater.m327setimpl(gapComposer3, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$18);
            Animation.CC.m(i9, gapComposer3, composeUiNode$Companion$SetModifier$19, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$13);
            Updater.m327setimpl(gapComposer3, materializeModifier5, composeUiNode$Companion$SetModifier$110);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.donation_reminders_experiment_label, gapComposer3), null, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal3)).primaryColor, null, 0L, FontWeight.Normal, FontFamily.Monospace, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).labelSmall, gapComposer, 1572864, 0, 130874);
            gapComposer2 = gapComposer;
            Modifier.CC.m(gapComposer2, z, z, z);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9(modifier, function0, list, i, 15);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0354 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0379 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0329  */
    /* JADX WARN: Type inference failed for: r5v34, types: [int] */
    /* JADX WARN: Type inference failed for: r5v35, types: [int] */
    /* JADX WARN: Type inference failed for: r5v38 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void DonationReminderContent(androidx.compose.ui.Modifier r43, final org.wikipedia.donate.donationreminder.DonationReminderViewModel r44, final org.wikipedia.donate.donationreminder.DonationReminderUiState r45, kotlin.jvm.functions.Function1 r46, kotlin.jvm.functions.Function0 r47, androidx.compose.runtime.GapComposer r48, int r49) {
        /*
            Method dump skipped, instructions count: 1221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.donate.donationreminder.DonationReminderScreenKt.DonationReminderContent(androidx.compose.ui.Modifier, org.wikipedia.donate.donationreminder.DonationReminderViewModel, org.wikipedia.donate.donationreminder.DonationReminderUiState, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, androidx.compose.runtime.GapComposer, int):void");
    }

    public static final void DonationReminderScreen(Modifier modifier, DonationReminderViewModel donationReminderViewModel, WikiErrorClickEvents wikiErrorClickEvents, Function0 function0, Function1 function1, Function0 function02, Function0 function03, Function0 function04, GapComposer gapComposer, int i) {
        Modifier modifier2;
        Object aboutActivityKt$$ExternalSyntheticLambda7;
        MutableState mutableState;
        LifecycleOwner lifecycleOwner;
        donationReminderViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function02.getClass();
        function03.getClass();
        function04.getClass();
        gapComposer.startRestartGroup(431023683);
        int i2 = i | 6 | (gapComposer.changedInstance(donationReminderViewModel) ? 32 : 16) | (gapComposer.changedInstance(wikiErrorClickEvents) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(function1) ? 16384 : 8192) | (gapComposer.changedInstance(function02) ? 131072 : 65536) | (gapComposer.changedInstance(function03) ? 1048576 : 524288) | (gapComposer.changedInstance(function04) ? 8388608 : 4194304);
        if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            DonationReminderUiState donationReminderUiState = (DonationReminderUiState) Updater.collectAsState(donationReminderViewModel.uiState, gapComposer).getValue();
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState2 = (MutableState) rememberedValue;
            LifecycleOwner lifecycleOwner2 = (LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            boolean changedInstance = gapComposer.changedInstance(donationReminderViewModel) | ((i2 & 57344) == 16384) | gapComposer.changedInstance(lifecycleOwner2);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                mutableState = mutableState2;
                lifecycleOwner = lifecycleOwner2;
                aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(lifecycleOwner, donationReminderViewModel, function1, mutableState, 7);
                gapComposer.updateRememberedValue(aboutActivityKt$$ExternalSyntheticLambda7);
            } else {
                aboutActivityKt$$ExternalSyntheticLambda7 = rememberedValue2;
                mutableState = mutableState2;
                lifecycleOwner = lifecycleOwner2;
            }
            Updater.DisposableEffect(lifecycleOwner, (Function1) aboutActivityKt$$ExternalSyntheticLambda7, gapComposer);
            boolean changedInstance2 = gapComposer.changedInstance(donationReminderViewModel);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new DiskLruCache$launchCleanup$1(8, donationReminderViewModel, null);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue3);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(1517179391, new RandomScreenKt$$ExternalSyntheticLambda18(function0, function03, function04, 12), gapComposer);
            long j = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor;
            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-338011500, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda0(donationReminderUiState, donationReminderViewModel, function1, function02, wikiErrorClickEvents, mutableState, 1), gapComposer);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            CardKt.m270ScaffoldTvnljyQ(companion, rememberComposableLambda, null, null, null, 0, j, 0L, null, rememberComposableLambda2, gapComposer, 805306422, 444);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeFragment$$ExternalSyntheticLambda5(modifier2, donationReminderViewModel, wikiErrorClickEvents, function0, function1, function02, function03, function04, i, 2);
        }
    }

    public static final void DonationRemindersSwitch(int i, GapComposer gapComposer, Modifier modifier, Function1 function1, boolean z) {
        gapComposer.startRestartGroup(-467776281);
        int i2 = (gapComposer.changed(z) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128);
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Modifier clip = ClipKt.clip(modifier, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f));
            int i4 = ListItemDefaults.$r8$clinit;
            CardKt.m267ListItemHXNGIdc(f30lambda$1489167543, clip, null, null, Expect_jvmKt.rememberComposableLambda(2144181028, new ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda5(z, function1, i3), gapComposer), ListItemDefaults.m287colorsJ08w3E(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, gapComposer), gapComposer, 196614, 412);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DonationReminderScreenKt$$ExternalSyntheticLambda33(z, function1, modifier, i, 0);
        }
    }

    public static final void InfoTooltip(String str, GapComposer gapComposer, int i) {
        GapComposer gapComposer2;
        str.getClass();
        gapComposer.startRestartGroup(475516555);
        int i2 = (gapComposer.changed(str) ? 32 : 16) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            PaddingValuesImpl paddingValuesImpl = TooltipKt.PlainTooltipContentPadding;
            MutatorMutex mutatorMutex = BasicTooltipDefaults.GlobalMutatorMutex;
            boolean changed = gapComposer.changed(false) | gapComposer.changed(mutatorMutex);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (changed || rememberedValue == obj) {
                rememberedValue = new TooltipStateImpl(mutatorMutex);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            TooltipStateImpl tooltipStateImpl = (TooltipStateImpl) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue2;
            float f = TooltipDefaults.plainTooltipMaxWidth;
            final int mo81roundToPx0680j_4 = ((Density) gapComposer.consume(CompositionLocalsKt.LocalDensity)).mo81roundToPx0680j_4(4.0f);
            boolean changed2 = gapComposer.changed(mo81roundToPx0680j_4);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new PopupPositionProvider() { // from class: androidx.compose.material3.TooltipDefaults$rememberPlainTooltipPositionProvider$1$1
                    @Override // androidx.compose.ui.window.PopupPositionProvider
                    /* renamed from: calculatePosition-llwVHH4 */
                    public final long mo0calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
                        int width = ((intRect.getWidth() - ((int) (j2 >> 32))) / 2) + intRect.left;
                        int i3 = intRect.top - ((int) (j2 & 4294967295L));
                        int i4 = mo81roundToPx0680j_4;
                        int i5 = i3 - i4;
                        if (i5 < 0) {
                            i5 = intRect.bottom + i4;
                        }
                        return (width << 32) | (i5 & 4294967295L);
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            gapComposer2 = gapComposer;
            TooltipKt.TooltipBox((TooltipDefaults$rememberPlainTooltipPositionProvider$1$1) rememberedValue3, Expect_jvmKt.rememberComposableLambda(1767461952, new OnboardingKt$$ExternalSyntheticLambda0(5, str), gapComposer), tooltipStateImpl, false, Expect_jvmKt.rememberComposableLambda(-1232301272, new HomeScreenKt$$ExternalSyntheticLambda17(23, coroutineScope, tooltipStateImpl), gapComposer), gapComposer2, 100666416);
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda30(i, str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OptionSelector(final java.lang.String r135, org.wikipedia.donate.donationreminder.SelectableOption r136, final int r137, kotlin.jvm.functions.Function1 r138, boolean r139, androidx.compose.runtime.GapComposer r140, final int r141, final int r142) {
        /*
            Method dump skipped, instructions count: 988
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.donate.donationreminder.DonationReminderScreenKt.OptionSelector(java.lang.String, org.wikipedia.donate.donationreminder.SelectableOption, int, kotlin.jvm.functions.Function1, boolean, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void ReadFrequencyView(SelectableOption selectableOption, boolean z, String str, Function1 function1, Function0 function0, Function1 function12, Function1 function13, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        selectableOption.getClass();
        str.getClass();
        function1.getClass();
        function0.getClass();
        function12.getClass();
        function13.getClass();
        gapComposer2.startRestartGroup(-462857916);
        int i2 = i | (gapComposer2.changedInstance(selectableOption) ? 4 : 2) | (gapComposer2.changed(z) ? 32 : 16) | (gapComposer2.changed(str) ? 256 : 128) | (gapComposer2.changedInstance(function1) ? 2048 : 1024) | (gapComposer2.changedInstance(function12) ? 131072 : 65536) | (gapComposer2.changedInstance(function13) ? 1048576 : 524288);
        if (gapComposer2.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            int i3 = i2 << 3;
            OptionSelector(UtilsKt.stringResource(R.string.donation_reminders_settings_article_frequency_label, gapComposer2), selectableOption, R.drawable.newsstand_24dp, function1, true, gapComposer2, (i3 & 112) | 24576 | (i2 & 7168), 0);
            if (z) {
                gapComposer2.startReplaceGroup(2140435622);
                CustomInputDialog(null, UtilsKt.stringResource(R.string.donation_reminders_settings_article_frequency_label, gapComposer2), false, str, function12, function0, null, lambda$1054573454, function13, gapComposer2, ((i2 << 6) & 234881024) | (i3 & 7168) | 12582912 | (57344 & (i2 >> 3)) | 196608, 69);
                gapComposer2 = gapComposer2;
                gapComposer2.end(false);
            } else {
                gapComposer2.startReplaceGroup(2141048926);
                gapComposer2.end(false);
            }
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonKt$$ExternalSyntheticLambda4(selectableOption, z, str, function1, function0, function12, function13, i);
        }
    }

    public static Intent newIntent(Context context, boolean z) {
        Intent putExtra = new Intent(context, (Class<?>) DonationReminderActivity.class).putExtra("fromSettings", z);
        putExtra.getClass();
        return putExtra;
    }
}
