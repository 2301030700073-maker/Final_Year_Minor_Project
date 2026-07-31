package net.thunderbird.feature.navigation.drawer.dropdown.ui;

import androidx.appcompat.app.ActionBar;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda4;
import java.util.Iterator;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.navigation.drawer.api.NavigationDrawerExternalContract$DrawerConfig;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt$$ExternalSyntheticLambda4;
import okhttp3.CacheControl;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DrawerContentKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ DrawerContract$State f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Function1 f$2;

    public /* synthetic */ DrawerContentKt$$ExternalSyntheticLambda0(DrawerContract$State drawerContract$State, Function1 function1, boolean z) {
        this.f$0 = drawerContract$State;
        this.f$2 = function1;
        this.f$1 = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object obj3;
        DisplayAccount displayAccount;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = Composer.Companion.Empty;
        Function1 function1 = this.f$2;
        DrawerContract$State drawerContract$State = this.f$0;
        int i2 = 0;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Iterator<E> it = drawerContract$State.accounts.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj3 = it.next();
                            if (Intrinsics.areEqual(((DisplayAccount) obj3).getId(), drawerContract$State.selectedAccountId)) {
                            }
                        } else {
                            obj3 = null;
                        }
                    }
                    DisplayAccount displayAccount2 = (DisplayAccount) obj3;
                    WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                    Modifier windowInsetsPadding = OffsetKt.windowInsetsPadding(Modifier.Companion.$$INSTANCE, FlowRowOverflow.current(gapComposer).safeDrawing);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, windowInsetsPadding);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    boolean z = this.f$1;
                    if (displayAccount2 == null) {
                        gapComposer.startReplaceGroup(-712613428);
                        gapComposer.end(false);
                        displayAccount = displayAccount2;
                    } else {
                        gapComposer.startReplaceGroup(-712613427);
                        boolean changed = gapComposer.changed(function1);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == obj4) {
                            rememberedValue = new InAppNotificationHostKt$$ExternalSyntheticLambda4(18, function1);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        Function0 function0 = (Function0) rememberedValue;
                        boolean changed2 = gapComposer.changed(function1) | gapComposer.changedInstance(displayAccount2);
                        Object rememberedValue2 = gapComposer.rememberedValue();
                        if (changed2 || rememberedValue2 == obj4) {
                            rememberedValue2 = new DrawerContentKt$$ExternalSyntheticLambda3(function1, displayAccount2, 0);
                            gapComposer.updateRememberedValue(rememberedValue2);
                        }
                        Jsoup.AccountView(displayAccount2, function0, (Function0) rememberedValue2, drawerContract$State.showAccountSelection, z, null, gapComposer, 0);
                        displayAccount = displayAccount2;
                        gapComposer = gapComposer;
                        ActionBar.m0DividerHorizontal9IZ8Weo(null, 0.0f, 0L, gapComposer, 0, 7);
                        gapComposer.end(false);
                    }
                    GapComposer gapComposer2 = gapComposer;
                    CrossfadeKt.AnimatedContent(Boolean.valueOf(drawerContract$State.showAccountSelection), null, new DrawerContentKt$$ExternalSyntheticLambda5(z, i2), null, "AccountSelectorVisibility", null, Expect_jvmKt.rememberComposableLambda(938929299, new AccountSetupNavHostKt$$ExternalSyntheticLambda4(drawerContract$State, function1, displayAccount, 3), gapComposer), gapComposer2, 1597440, 42);
                    gapComposer2.end(true);
                    break;
                }
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (!gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer3, 0);
                    long j2 = gapComposer3.compositeKeyHashCode;
                    int i4 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer3, fillElement);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m380setimpl(gapComposer3, columnMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer3, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer3, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer3, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    NavigationDrawerExternalContract$DrawerConfig navigationDrawerExternalContract$DrawerConfig = drawerContract$State.config;
                    boolean z2 = navigationDrawerExternalContract$DrawerConfig.expandAllFolder;
                    DisplayTreeFolder displayTreeFolder = drawerContract$State.rootFolder;
                    DisplayFolder displayFolder = drawerContract$State.selectedFolder;
                    boolean z3 = navigationDrawerExternalContract$DrawerConfig.showStarredCount;
                    LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                    boolean changed3 = gapComposer3.changed(function1);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue3 == obj4) {
                        rememberedValue3 = new ChangelogScreenKt$$ExternalSyntheticLambda7(14, function1);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    ByteStreamsKt.FolderList(displayTreeFolder, displayFolder, (Function1) rememberedValue3, z3, layoutWeightElement, z2, gapComposer3, 8);
                    ActionBar.m0DividerHorizontal9IZ8Weo(null, 0.0f, 0L, gapComposer3, 0, 7);
                    boolean changed4 = gapComposer3.changed(function1);
                    Object rememberedValue4 = gapComposer3.rememberedValue();
                    if (changed4 || rememberedValue4 == obj4) {
                        rememberedValue4 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(11, function1);
                        gapComposer3.updateRememberedValue(rememberedValue4);
                    }
                    Function0 function02 = (Function0) rememberedValue4;
                    boolean changed5 = gapComposer3.changed(function1);
                    Object rememberedValue5 = gapComposer3.rememberedValue();
                    if (changed5 || rememberedValue5 == obj4) {
                        rememberedValue5 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(12, function1);
                        gapComposer3.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function03 = (Function0) rememberedValue5;
                    boolean changed6 = gapComposer3.changed(function1);
                    Object rememberedValue6 = gapComposer3.rememberedValue();
                    if (changed6 || rememberedValue6 == obj4) {
                        rememberedValue6 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(13, function1);
                        gapComposer3.updateRememberedValue(rememberedValue6);
                    }
                    Function0 function04 = (Function0) rememberedValue6;
                    boolean changed7 = gapComposer3.changed(function1);
                    Object rememberedValue7 = gapComposer3.rememberedValue();
                    if (changed7 || rememberedValue7 == obj4) {
                        rememberedValue7 = new InAppNotificationHostKt$$ExternalSyntheticLambda4(14, function1);
                        gapComposer3.updateRememberedValue(rememberedValue7);
                    }
                    CacheControl.Companion.FolderSettingList(function02, function03, function04, (Function0) rememberedValue7, this.f$1, drawerContract$State.isLoading, null, gapComposer3, 0);
                    gapComposer3.end(true);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ DrawerContentKt$$ExternalSyntheticLambda0(DrawerContract$State drawerContract$State, boolean z, Function1 function1) {
        this.f$0 = drawerContract$State;
        this.f$1 = z;
        this.f$2 = function1;
    }
}
