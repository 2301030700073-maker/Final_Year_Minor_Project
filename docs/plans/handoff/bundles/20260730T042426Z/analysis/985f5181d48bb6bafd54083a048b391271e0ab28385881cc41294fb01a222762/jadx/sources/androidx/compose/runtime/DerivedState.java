package androidx.compose.runtime;

import androidx.collection.ObjectIntMap;

/* compiled from: DerivedState.kt */
/* loaded from: classes.dex */
public interface DerivedState extends State {

    /* compiled from: DerivedState.kt */
    public interface Record {
        Object getCurrentValue();

        ObjectIntMap getDependencies();
    }

    Record getCurrentRecord();

    SnapshotMutationPolicy getPolicy();
}
