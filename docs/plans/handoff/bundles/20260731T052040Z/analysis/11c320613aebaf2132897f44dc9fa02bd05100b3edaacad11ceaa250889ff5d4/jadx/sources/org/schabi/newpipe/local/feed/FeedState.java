package org.schabi.newpipe.local.feed;

import androidx.compose.ui.Modifier;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class FeedState {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ErrorState extends FeedState {
        public final Throwable error;

        public ErrorState(Throwable th) {
            this.error = th;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ErrorState) && Intrinsics.areEqual(this.error, ((ErrorState) obj).error);
        }

        public final int hashCode() {
            Throwable th = this.error;
            if (th == null) {
                return 0;
            }
            return th.hashCode();
        }

        public final String toString() {
            return "ErrorState(error=" + this.error + ")";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LoadedState extends FeedState {
        public final ArrayList items;
        public final List itemsErrors;
        public final long notLoadedCount;
        public final OffsetDateTime oldestUpdate;

        public LoadedState(ArrayList arrayList, OffsetDateTime offsetDateTime, long j, List list) {
            list.getClass();
            this.items = arrayList;
            this.oldestUpdate = offsetDateTime;
            this.notLoadedCount = j;
            this.itemsErrors = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LoadedState)) {
                return false;
            }
            LoadedState loadedState = (LoadedState) obj;
            return this.items.equals(loadedState.items) && Intrinsics.areEqual(this.oldestUpdate, loadedState.oldestUpdate) && this.notLoadedCount == loadedState.notLoadedCount && Intrinsics.areEqual(this.itemsErrors, loadedState.itemsErrors);
        }

        public final int hashCode() {
            int hashCode = this.items.hashCode() * 31;
            OffsetDateTime offsetDateTime = this.oldestUpdate;
            int hashCode2 = offsetDateTime == null ? 0 : offsetDateTime.hashCode();
            long j = this.notLoadedCount;
            return this.itemsErrors.hashCode() + ((((hashCode + hashCode2) * 31) + ((int) (j ^ (j >>> 32)))) * 31);
        }

        public final String toString() {
            return "LoadedState(items=" + this.items + ", oldestUpdate=" + this.oldestUpdate + ", notLoadedCount=" + this.notLoadedCount + ", itemsErrors=" + this.itemsErrors + ")";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ProgressState extends FeedState {
        public final int currentProgress;
        public final int maxProgress;
        public final int progressMessage;

        public ProgressState(int i, int i2, int i3) {
            this.currentProgress = i;
            this.maxProgress = i2;
            this.progressMessage = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProgressState)) {
                return false;
            }
            ProgressState progressState = (ProgressState) obj;
            return this.currentProgress == progressState.currentProgress && this.maxProgress == progressState.maxProgress && this.progressMessage == progressState.progressMessage;
        }

        public final int hashCode() {
            return (((this.currentProgress * 31) + this.maxProgress) * 31) + this.progressMessage;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ProgressState(currentProgress=");
            sb.append(this.currentProgress);
            sb.append(", maxProgress=");
            sb.append(this.maxProgress);
            sb.append(", progressMessage=");
            return Modifier.CC.m(sb, this.progressMessage, ")");
        }
    }
}
