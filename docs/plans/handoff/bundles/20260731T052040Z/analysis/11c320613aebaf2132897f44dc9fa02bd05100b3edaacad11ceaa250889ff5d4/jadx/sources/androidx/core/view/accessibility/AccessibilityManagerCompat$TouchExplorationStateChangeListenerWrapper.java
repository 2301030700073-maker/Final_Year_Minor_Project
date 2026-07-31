package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper implements AccessibilityManager.TouchExplorationStateChangeListener {
    public final OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 mListener;

    public AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) {
        this.mListener = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper) {
            return this.mListener.equals(((AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper) obj).mListener);
        }
        return false;
    }

    public final int hashCode() {
        return this.mListener.hashCode();
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) this.mListener.f$0;
        AutoCompleteTextView autoCompleteTextView = dropdownMenuEndIconDelegate.autoCompleteTextView;
        if (autoCompleteTextView == null || autoCompleteTextView.getInputType() != 0) {
            return;
        }
        CheckableImageButton checkableImageButton = dropdownMenuEndIconDelegate.endIconView;
        int i = z ? 2 : 1;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        checkableImageButton.setImportantForAccessibility(i);
    }
}
