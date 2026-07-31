package com.fsck.k9.ui.settings;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.ScrollableAreaElement;
import androidx.compose.foundation.ScrollingLayoutElement;
import androidx.compose.foundation.VerticalScrollableClipShape;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.core.util.DebugUtils;
import androidx.work.Operation$State;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutFragmentKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function0 f$10;
    public final /* synthetic */ String f$11;
    public final /* synthetic */ ImmutableList f$12;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ String f$3;
    public final /* synthetic */ String f$4;
    public final /* synthetic */ Function0 f$5;
    public final /* synthetic */ Function0 f$6;
    public final /* synthetic */ Function0 f$7;
    public final /* synthetic */ String f$8;
    public final /* synthetic */ Function0 f$9;

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda0(ScrollState scrollState, int i, String str, String str2, Function0 function0, Function0 function02, Function0 function03, String str3, Function0 function04, Function0 function05, String str4, ImmutableList immutableList) {
        this.f$1 = scrollState;
        this.f$2 = i;
        this.f$3 = str;
        this.f$4 = str2;
        this.f$5 = function0;
        this.f$6 = function02;
        this.f$7 = function03;
        this.f$8 = str3;
        this.f$9 = function04;
        this.f$10 = function05;
        this.f$11 = str4;
        this.f$12 = immutableList;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier then;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        switch (i) {
            case 0:
                ScrollState scrollState = (ScrollState) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    then = SizeKt.FillWholeMaxSize.then(ClipKt.clip(Modifier.Companion.$$INSTANCE, VerticalScrollableClipShape.INSTANCE)).then(new ScrollableAreaElement(null, null, Orientation.Vertical, scrollState, scrollState.internalInteractionSource, true, true)).then(new ScrollingLayoutElement(scrollState));
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
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
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    DebugUtils.AppLogo(this.f$2, 0, gapComposer, null);
                    DebugUtils.SectionTitle(this.f$3, null, gapComposer, 0);
                    DebugUtils.SectionContent(Operation$State.stringResource(gapComposer, R.string.version), this.f$4, R.drawable.ic_info, null, null, this.f$5, gapComposer, 0, 24);
                    DebugUtils.SectionContent(Operation$State.stringResource(gapComposer, R.string.authors), Operation$State.stringResource(gapComposer, R.string.about_app_authors_k9), R.drawable.ic_group, null, Operation$State.stringResource(gapComposer, R.string.about_app_authors_thunderbird), this.f$6, gapComposer, 0, 8);
                    DebugUtils.SectionContent(Operation$State.stringResource(gapComposer, R.string.license), Operation$State.stringResource(gapComposer, R.string.app_license), R.drawable.ic_code, null, null, this.f$7, gapComposer, 0, 24);
                    DebugUtils.SectionTitle(this.f$8, null, gapComposer, 0);
                    DebugUtils.SectionContent(Operation$State.stringResource(gapComposer, R.string.about_website_title), Operation$State.stringResource(gapComposer, R.string.app_webpage_url), R.drawable.ic_link, null, null, this.f$9, gapComposer, 0, 24);
                    DebugUtils.SectionContent(Operation$State.stringResource(gapComposer, R.string.user_forum_title), Operation$State.stringResource(gapComposer, R.string.user_forum_url), R.drawable.ic_forum, null, null, this.f$10, gapComposer, 0, 24);
                    DebugUtils.SectionTitle(this.f$11, null, gapComposer, 0);
                    DebugUtils.LibraryList(this.f$12, gapComposer, 0);
                    gapComposer.end(true);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                DebugUtils.AboutScreen(this.f$3, this.f$4, this.f$8, this.f$11, this.f$2, this.f$12, (Modifier) obj3, this.f$5, this.f$6, this.f$7, this.f$9, this.f$10, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ AboutFragmentKt$$ExternalSyntheticLambda0(String str, String str2, String str3, String str4, int i, ImmutableList immutableList, Modifier modifier, Function0 function0, Function0 function02, Function0 function03, Function0 function04, Function0 function05, int i2) {
        this.f$3 = str;
        this.f$4 = str2;
        this.f$8 = str3;
        this.f$11 = str4;
        this.f$2 = i;
        this.f$12 = immutableList;
        this.f$1 = modifier;
        this.f$5 = function0;
        this.f$6 = function02;
        this.f$7 = function03;
        this.f$9 = function04;
        this.f$10 = function05;
    }
}
