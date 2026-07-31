package net.newpipe.app.navigation;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import co.touchlab.kermit.Logger$Companion;
import co.touchlab.kermit.Severity;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Navigator {
    public final SnapshotStateList backstack;
    public final Function0 onCloseRequest;

    public Navigator(Destination destination, Function0 function0) {
        this.onCloseRequest = function0;
        Destination[] destinationArr = {destination};
        SnapshotStateList snapshotStateList = new SnapshotStateList();
        snapshotStateList.addAll(ArraysKt.toList(destinationArr));
        this.backstack = snapshotStateList;
    }

    public final void navigateUp() {
        if (this.backstack.size() > 1) {
            CollectionsKt__MutableCollectionsKt.removeLastOrNull(this.backstack);
            return;
        }
        Logger$Companion logger$Companion = Logger$Companion.Companion;
        logger$Companion.getClass();
        Severity severity = Severity.Info;
        if (logger$Companion.config._minSeverity.compareTo(severity) <= 0) {
            logger$Companion.processLog(severity, null, "Cannot remove the only entry in backstack!");
        }
        this.onCloseRequest.invoke();
    }
}
