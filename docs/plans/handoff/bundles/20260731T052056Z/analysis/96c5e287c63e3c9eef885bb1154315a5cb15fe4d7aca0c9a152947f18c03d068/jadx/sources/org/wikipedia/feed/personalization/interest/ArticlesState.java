package org.wikipedia.feed.personalization.interest;

import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface ArticlesState {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Error implements ArticlesState {
        public final Throwable message;

        public Error(Throwable th) {
            th.getClass();
            this.message = th;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && Intrinsics.areEqual(this.message, ((Error) obj).message);
        }

        public final int hashCode() {
            return this.message.hashCode();
        }

        public final String toString() {
            return "Error(message=" + this.message + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Loading implements ArticlesState {
        public static final Loading INSTANCE = new Loading();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Loading);
        }

        public final int hashCode() {
            return -991324233;
        }

        public final String toString() {
            return "Loading";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Success implements ArticlesState {
        public final List articles;
        public final Set selectedArticles;

        public Success(List list, Set set) {
            list.getClass();
            set.getClass();
            this.articles = list;
            this.selectedArticles = set;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.areEqual(this.articles, success.articles) && Intrinsics.areEqual(this.selectedArticles, success.selectedArticles);
        }

        public final int hashCode() {
            return this.selectedArticles.hashCode() + (this.articles.hashCode() * 31);
        }

        public final String toString() {
            return "Success(articles=" + this.articles + ", selectedArticles=" + this.selectedArticles + ")";
        }
    }
}
