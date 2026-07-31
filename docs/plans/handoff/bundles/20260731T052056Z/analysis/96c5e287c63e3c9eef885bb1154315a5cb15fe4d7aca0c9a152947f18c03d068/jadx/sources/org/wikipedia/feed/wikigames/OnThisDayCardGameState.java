package org.wikipedia.feed.wikigames;

import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.feed.onthisday.OnThisDay;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class OnThisDayCardGameState {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Completed extends OnThisDayCardGameState {
        public final OnThisDay.Event event1;
        public final OnThisDay.Event event2;
        public final String langCode;
        public final int score;
        public final int totalQuestions;

        public Completed(String str, int i, int i2, OnThisDay.Event event, OnThisDay.Event event2) {
            str.getClass();
            event.getClass();
            event2.getClass();
            this.langCode = str;
            this.score = i;
            this.totalQuestions = i2;
            this.event1 = event;
            this.event2 = event2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Completed)) {
                return false;
            }
            Completed completed = (Completed) obj;
            return Intrinsics.areEqual(this.langCode, completed.langCode) && this.score == completed.score && this.totalQuestions == completed.totalQuestions && Intrinsics.areEqual(this.event1, completed.event1) && Intrinsics.areEqual(this.event2, completed.event2);
        }

        @Override // org.wikipedia.feed.wikigames.OnThisDayCardGameState
        public final OnThisDay.Event getEvent1() {
            return this.event1;
        }

        @Override // org.wikipedia.feed.wikigames.OnThisDayCardGameState
        public final OnThisDay.Event getEvent2() {
            return this.event2;
        }

        public final int hashCode() {
            return this.event2.hashCode() + ((this.event1.hashCode() + (((((this.langCode.hashCode() * 31) + this.score) * 31) + this.totalQuestions) * 31)) * 31);
        }

        public final String toString() {
            return "Completed(langCode=" + this.langCode + ", score=" + this.score + ", totalQuestions=" + this.totalQuestions + ", event1=" + this.event1 + ", event2=" + this.event2 + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class InProgress extends OnThisDayCardGameState {
        public final int currentQuestion;
        public final OnThisDay.Event event1;
        public final OnThisDay.Event event2;
        public final String langCode;

        public InProgress(String str, int i, OnThisDay.Event event, OnThisDay.Event event2) {
            str.getClass();
            event.getClass();
            event2.getClass();
            this.langCode = str;
            this.currentQuestion = i;
            this.event1 = event;
            this.event2 = event2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InProgress)) {
                return false;
            }
            InProgress inProgress = (InProgress) obj;
            return Intrinsics.areEqual(this.langCode, inProgress.langCode) && this.currentQuestion == inProgress.currentQuestion && Intrinsics.areEqual(this.event1, inProgress.event1) && Intrinsics.areEqual(this.event2, inProgress.event2);
        }

        @Override // org.wikipedia.feed.wikigames.OnThisDayCardGameState
        public final OnThisDay.Event getEvent1() {
            return this.event1;
        }

        @Override // org.wikipedia.feed.wikigames.OnThisDayCardGameState
        public final OnThisDay.Event getEvent2() {
            return this.event2;
        }

        public final int hashCode() {
            return this.event2.hashCode() + ((this.event1.hashCode() + (((this.langCode.hashCode() * 31) + this.currentQuestion) * 31)) * 31);
        }

        public final String toString() {
            return "InProgress(langCode=" + this.langCode + ", currentQuestion=" + this.currentQuestion + ", event1=" + this.event1 + ", event2=" + this.event2 + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Preview extends OnThisDayCardGameState {
        public final OnThisDay.Event event1;
        public final OnThisDay.Event event2;
        public final String langCode;

        public Preview(String str, OnThisDay.Event event, OnThisDay.Event event2) {
            str.getClass();
            event.getClass();
            event2.getClass();
            this.langCode = str;
            this.event1 = event;
            this.event2 = event2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Preview)) {
                return false;
            }
            Preview preview = (Preview) obj;
            return Intrinsics.areEqual(this.langCode, preview.langCode) && Intrinsics.areEqual(this.event1, preview.event1) && Intrinsics.areEqual(this.event2, preview.event2);
        }

        @Override // org.wikipedia.feed.wikigames.OnThisDayCardGameState
        public final OnThisDay.Event getEvent1() {
            return this.event1;
        }

        @Override // org.wikipedia.feed.wikigames.OnThisDayCardGameState
        public final OnThisDay.Event getEvent2() {
            return this.event2;
        }

        public final int hashCode() {
            return this.event2.hashCode() + ((this.event1.hashCode() + (this.langCode.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "Preview(langCode=" + this.langCode + ", event1=" + this.event1 + ", event2=" + this.event2 + ")";
        }
    }

    public abstract OnThisDay.Event getEvent1();

    public abstract OnThisDay.Event getEvent2();
}
