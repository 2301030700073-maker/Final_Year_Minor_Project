package org.wikipedia.settings.homefeed;

import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.search.SearchResult$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface HomeFeedSettingsDestination {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class CommunityModuleScreen implements HomeFeedSettingsDestination {
        public static final CommunityModuleScreen INSTANCE = new CommunityModuleScreen();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(17));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof CommunityModuleScreen);
        }

        public final int hashCode() {
            return 1883757722;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "CommunityModuleScreen";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class DefaultFeedViewScreen implements HomeFeedSettingsDestination {
        public static final DefaultFeedViewScreen INSTANCE = new DefaultFeedViewScreen();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(18));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DefaultFeedViewScreen);
        }

        public final int hashCode() {
            return 1608819817;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "DefaultFeedViewScreen";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class FeedConfiguration implements HomeFeedSettingsDestination {
        public static final FeedConfiguration INSTANCE = new FeedConfiguration();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(19));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof FeedConfiguration);
        }

        public final int hashCode() {
            return 138371217;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "FeedConfiguration";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ForYouModuleScreen implements HomeFeedSettingsDestination {
        public static final ForYouModuleScreen INSTANCE = new ForYouModuleScreen();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(20));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ForYouModuleScreen);
        }

        public final int hashCode() {
            return 1283630645;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "ForYouModuleScreen";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Root implements HomeFeedSettingsDestination {
        public static final Root INSTANCE = new Root();
        public static final /* synthetic */ Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(21));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Root);
        }

        public final int hashCode() {
            return -1156879447;
        }

        public final KSerializer serializer() {
            return (KSerializer) $cachedSerializer$delegate.getValue();
        }

        public final String toString() {
            return "Root";
        }
    }
}
