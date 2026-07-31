package androidx.compose.ui.autofill;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusListener;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsListener;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.spatial.RectManager;
import androidx.datastore.preferences.protobuf.Utf8;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidAutofillManager extends AutofillManager implements SemanticsListener, FocusListener {
    public final MutableIntSet currentlyDisplayedIDs;
    public final String packageName;
    public boolean pendingAutofillCommit;
    public final AutofillIdCompat platformAutofillManager;
    public final RectManager rectManager;
    public final Rect reusableRect = new Rect();
    public final AutofillId rootAutofillId;
    public final SemanticsOwner semanticsOwner;
    public final AndroidComposeView view;

    public AndroidAutofillManager(AutofillIdCompat autofillIdCompat, SemanticsOwner semanticsOwner, AndroidComposeView androidComposeView, RectManager rectManager, String str) {
        this.platformAutofillManager = autofillIdCompat;
        this.semanticsOwner = semanticsOwner;
        this.view = androidComposeView;
        this.rectManager = rectManager;
        this.packageName = str;
        androidComposeView.setImportantForAutofill(1);
        AutofillIdCompat autofillId = Utf8.SafeProcessor.getAutofillId(androidComposeView);
        AutofillId autofillId2 = autofillId != null ? (AutofillId) autofillId.mWrappedObj : null;
        if (autofillId2 == null) {
            throw Modifier.CC.m405m("Required value was null.");
        }
        this.rootAutofillId = autofillId2;
        this.currentlyDisplayedIDs = new MutableIntSet();
    }

    @Override // androidx.compose.ui.focus.FocusListener
    public final void onFocusChanged(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2) {
        LayoutNode requireLayoutNode;
        SemanticsConfiguration semanticsConfiguration;
        LayoutNode requireLayoutNode2;
        SemanticsConfiguration semanticsConfiguration2;
        if (focusTargetNode != null && (requireLayoutNode2 = HitTestResultKt.requireLayoutNode(focusTargetNode)) != null && (semanticsConfiguration2 = requireLayoutNode2.getSemanticsConfiguration()) != null) {
            MutableScatterMap mutableScatterMap = semanticsConfiguration2.props;
            if (mutableScatterMap.contains(SemanticsActions.OnAutofillText) || mutableScatterMap.contains(SemanticsActions.OnFillData)) {
                this.platformAutofillManager.notifyViewExited(this.view, requireLayoutNode2.semanticsId);
            }
        }
        if (focusTargetNode2 == null || (requireLayoutNode = HitTestResultKt.requireLayoutNode(focusTargetNode2)) == null || (semanticsConfiguration = requireLayoutNode.getSemanticsConfiguration()) == null) {
            return;
        }
        MutableScatterMap mutableScatterMap2 = semanticsConfiguration.props;
        if (mutableScatterMap2.contains(SemanticsActions.OnAutofillText) || mutableScatterMap2.contains(SemanticsActions.OnFillData)) {
            final int i = requireLayoutNode.semanticsId;
            this.rectManager.rects.withRect(i, new Function4() { // from class: androidx.compose.ui.autofill.AndroidAutofillManager$onFocusChanged$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(4);
                }

                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    int intValue = ((Number) obj).intValue();
                    int intValue2 = ((Number) obj2).intValue();
                    int intValue3 = ((Number) obj3).intValue();
                    int intValue4 = ((Number) obj4).intValue();
                    AndroidAutofillManager androidAutofillManager = AndroidAutofillManager.this;
                    androidAutofillManager.platformAutofillManager.notifyViewEntered(androidAutofillManager.view, i, new Rect(intValue, intValue2, intValue3, intValue4));
                    return Unit.INSTANCE;
                }
            });
        }
    }

    public final void performAutofill(SparseArray sparseArray) {
        SemanticsConfiguration semanticsConfiguration;
        Function1 function1;
        Function1 function12;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            int keyAt = sparseArray.keyAt(i);
            AutofillValue m = StreamSharing$$ExternalSyntheticLambda0.m(sparseArray.get(keyAt));
            LayoutNode layoutNode = (LayoutNode) this.semanticsOwner.nodes.get(keyAt);
            if (layoutNode != null && (semanticsConfiguration = layoutNode.getSemanticsConfiguration()) != null) {
                MutableScatterMap mutableScatterMap = semanticsConfiguration.props;
                Object obj = mutableScatterMap.get(SemanticsActions.OnAutofillText);
                if (obj == null) {
                    obj = null;
                }
                AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
                if (accessibilityAction != null && (function12 = (Function1) accessibilityAction.action) != null) {
                }
                Object obj2 = mutableScatterMap.get(SemanticsActions.OnFillData);
                AccessibilityAction accessibilityAction2 = (AccessibilityAction) (obj2 != null ? obj2 : null);
                if (accessibilityAction2 != null && (function1 = (Function1) accessibilityAction2.action) != null) {
                }
            }
        }
    }
}
