package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.Snapshot$Companion$$ExternalSyntheticLambda0;
import androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap;
import androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1;
import androidx.preference.PreferenceManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class OwnerSnapshotObserver {
    public final PreferenceManager observer;
    public final OwnerSnapshotObserver$onCommitAffectingLayout$1 onCommitAffectingLookaheadMeasure = OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$9;
    public final OwnerSnapshotObserver$onCommitAffectingLayout$1 onCommitAffectingMeasure = OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$10;
    public final OwnerSnapshotObserver$onCommitAffectingLayout$1 onCommitAffectingSemantics = OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$11;
    public final OwnerSnapshotObserver$onCommitAffectingLayout$1 onCommitAffectingLayout = OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE;
    public final OwnerSnapshotObserver$onCommitAffectingLayout$1 onCommitAffectingLayoutModifier = OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$6;
    public final OwnerSnapshotObserver$onCommitAffectingLayout$1 onCommitAffectingLayoutModifierInLookahead = OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$7;
    public final OwnerSnapshotObserver$onCommitAffectingLayout$1 onCommitAffectingLookahead = OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$8;

    public OwnerSnapshotObserver(AndroidComposeView$snapshotObserver$1 androidComposeView$snapshotObserver$1) {
        this.observer = new PreferenceManager(androidComposeView$snapshotObserver$1);
    }

    public final void stopObserving$ui() {
        Snapshot$Companion$$ExternalSyntheticLambda0 snapshot$Companion$$ExternalSyntheticLambda0 = (Snapshot$Companion$$ExternalSyntheticLambda0) this.observer.mOnDisplayPreferenceDialogListener;
        if (snapshot$Companion$$ExternalSyntheticLambda0 != null) {
            snapshot$Companion$$ExternalSyntheticLambda0.dispose();
        }
        PreferenceManager preferenceManager = this.observer;
        synchronized (preferenceManager.mOnPreferenceTreeClickListener) {
            MutableVector mutableVector = (MutableVector) preferenceManager.mPreferenceScreen;
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                SnapshotStateObserver$ObservedScopeMap snapshotStateObserver$ObservedScopeMap = (SnapshotStateObserver$ObservedScopeMap) objArr[i2];
                snapshotStateObserver$ObservedScopeMap.valueToScopes.clear();
                snapshotStateObserver$ObservedScopeMap.scopeToValues.clear();
                snapshotStateObserver$ObservedScopeMap.dependencyToDerivedStates.clear();
                snapshotStateObserver$ObservedScopeMap.recordedDerivedStateValues.clear();
            }
        }
    }
}
