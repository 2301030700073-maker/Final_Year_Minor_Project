package com.fsck.k9.ui.messagelist;

import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.CheckboxKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.ExposedDropdownMenuDefaults;
import androidx.compose.material3.SegmentedButtonDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLite;
import androidx.work.Operation$State;
import app.k9mail.feature.account.setup.ui.autodiscovery.view.AutoDiscoveryResultHeaderState;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$$ExternalSyntheticLambda7;
import net.thunderbird.feature.mail.message.list.domain.model.SortType;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.Okio;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragmentKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ boolean f$2;

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda3(int i, int i2, Object obj, Object obj2, boolean z) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$2 = z;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        boolean z = this.f$2;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj4;
                SortType sortType = (SortType) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(4.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    Modifier padding = OffsetKt.padding(companion, paddingValues);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, vertical, gapComposer, 48);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, padding);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(Operation$State.stringResource(gapComposer, sortType.labelResId), new LayoutWeightElement(1.0f, true), 0L, null, 0, 0, gapComposer, 0, 60);
                    CrossfadeKt.Crossfade(Boolean.valueOf(z), SizeKt.m234size3ABfNKs(companion, 16.0f), null, null, MessageListLoaderKt.f32lambda$2052971648, gapComposer, 24624, 12);
                    gapComposer.end(true);
                    break;
                }
            case 1:
                ((Integer) obj2).getClass();
                ((ExposedDropdownMenuDefaults) obj4).TrailingIcon(z, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(385));
                break;
            case 2:
                ((Integer) obj2).getClass();
                ((SegmentedButtonDefaults) obj4).Icon(z, (Function2) obj3, (Composer) obj, Updater.updateChangedFlags(3073));
                break;
            case 3:
                String str = (String) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Util.m1089ButtonTextjM_yU8I(str, function0, null, this.f$2, null, null, gapComposer2, 0, 52);
                    break;
                }
            case 4:
                ((Integer) obj2).getClass();
                Utf8.SafeProcessor.AutoDiscoveryResultHeaderView((AutoDiscoveryResultHeaderState) obj4, z, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                Okio.SwipeableRowBackground((SwipeableRowState) obj4, z, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(7));
                break;
            case 6:
                ImmutableList immutableList = (ImmutableList) obj4;
                Function1 function1 = (Function1) obj3;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer3, 0);
                    long j2 = gapComposer3.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer3, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer3.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m380setimpl(gapComposer3, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m380setimpl(gapComposer3, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i3);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m380setimpl(gapComposer3, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m379reconcileimpl(gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m380setimpl(gapComposer3, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                    boolean changedInstance = gapComposer3.changedInstance(immutableList);
                    Object rememberedValue = gapComposer3.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new ForwardingFileSystem$$ExternalSyntheticLambda0(8, immutableList);
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    ActionBar.LazyColumn(0, 510, null, null, null, null, null, gapComposer3, null, layoutWeightElement, (Function1) rememberedValue, false);
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    boolean changed = gapComposer3.changed(function1);
                    boolean z2 = this.f$2;
                    boolean changed2 = gapComposer3.changed(z2) | changed;
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new CheckboxKt$$ExternalSyntheticLambda2(function1, z2, 4);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    Modifier m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(fillElement, false, null, (Function0) rememberedValue2, 15);
                    RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer3, 48);
                    long j3 = gapComposer3.compositeKeyHashCode;
                    int i4 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, m136clickableoSLSa3U$default);
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m380setimpl(gapComposer3, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m380setimpl(gapComposer3, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                    Config.CC.m(i4, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m380setimpl(gapComposer3, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                    boolean changed3 = gapComposer3.changed(function1);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new ChangelogScreenKt$$ExternalSyntheticLambda7(0, function1);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    RelationUtil.Checkbox(z2, (Function1) rememberedValue3, null, false, gapComposer3, 0);
                    SQLite.m815TextLabelMediumXl4FiYE(Operation$State.stringResource(gapComposer3, R.string.changelog_show_recent_changes), null, 0L, 0, 0, gapComposer3, 0, 62);
                    gapComposer3.end(true);
                    gapComposer3.end(true);
                    break;
                }
            default:
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj4;
                Ref$IntRef ref$IntRef2 = (Ref$IntRef) obj3;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    Okio.FolderListItemBadge(ref$IntRef.element, ref$IntRef2.element, this.f$2, null, gapComposer4, 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ MessageListFragmentKt$$ExternalSyntheticLambda3(int i, Object obj, Object obj2, boolean z) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = z;
    }
}
