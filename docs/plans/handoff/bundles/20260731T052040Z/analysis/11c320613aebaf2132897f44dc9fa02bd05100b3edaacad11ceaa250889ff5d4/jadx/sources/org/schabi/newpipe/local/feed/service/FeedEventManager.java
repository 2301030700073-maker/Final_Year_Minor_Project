package org.schabi.newpipe.local.feed.service;

import androidx.compose.ui.Modifier;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.processors.BehaviorProcessor;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class FeedEventManager {
    public static final Flowable eventsFlowable;
    public static final AtomicBoolean ignoreUpstream;
    public static final BehaviorProcessor processor;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Event {

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class ErrorResultEvent extends Event {
            public final Throwable error;

            public ErrorResultEvent(Throwable th) {
                th.getClass();
                this.error = th;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof ErrorResultEvent) && Intrinsics.areEqual(this.error, ((ErrorResultEvent) obj).error);
            }

            public final int hashCode() {
                return this.error.hashCode();
            }

            public final String toString() {
                return "ErrorResultEvent(error=" + this.error + ")";
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class IdleEvent extends Event {
            public static final IdleEvent INSTANCE = new IdleEvent();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof IdleEvent);
            }

            public final int hashCode() {
                return -2141352089;
            }

            public final String toString() {
                return "IdleEvent";
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class ProgressEvent extends Event {
            public final int currentProgress;
            public final int maxProgress;
            public final int progressMessage;

            public ProgressEvent(int i, int i2, int i3) {
                this.currentProgress = i;
                this.maxProgress = i2;
                this.progressMessage = i3;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof ProgressEvent)) {
                    return false;
                }
                ProgressEvent progressEvent = (ProgressEvent) obj;
                return this.currentProgress == progressEvent.currentProgress && this.maxProgress == progressEvent.maxProgress && this.progressMessage == progressEvent.progressMessage;
            }

            public final int hashCode() {
                return (((this.currentProgress * 31) + this.maxProgress) * 31) + this.progressMessage;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("ProgressEvent(currentProgress=");
                sb.append(this.currentProgress);
                sb.append(", maxProgress=");
                sb.append(this.maxProgress);
                sb.append(", progressMessage=");
                return Modifier.CC.m(sb, this.progressMessage, ")");
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class SuccessResultEvent extends Event {
            public final List itemsErrors;

            public SuccessResultEvent(ArrayList arrayList) {
                arrayList.getClass();
                this.itemsErrors = arrayList;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof SuccessResultEvent) && Intrinsics.areEqual(this.itemsErrors, ((SuccessResultEvent) obj).itemsErrors);
            }

            public final int hashCode() {
                return this.itemsErrors.hashCode();
            }

            public final String toString() {
                return "SuccessResultEvent(itemsErrors=" + this.itemsErrors + ")";
            }
        }
    }

    static {
        BehaviorProcessor behaviorProcessor = new BehaviorProcessor();
        processor = behaviorProcessor;
        ignoreUpstream = new AtomicBoolean();
        eventsFlowable = behaviorProcessor.startWithItem(Event.IdleEvent.INSTANCE);
    }
}
