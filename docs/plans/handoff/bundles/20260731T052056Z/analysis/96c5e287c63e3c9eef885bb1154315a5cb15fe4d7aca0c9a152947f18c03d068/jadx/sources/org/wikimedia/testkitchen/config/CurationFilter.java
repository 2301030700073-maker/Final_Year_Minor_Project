package org.wikimedia.testkitchen.config;

import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt;
import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikimedia.testkitchen.config.curation.CollectionCurationRules;
import org.wikimedia.testkitchen.config.curation.ComparableCurationRules;
import org.wikimedia.testkitchen.config.curation.CurationRules;
import org.wikimedia.testkitchen.context.AgentData;
import org.wikimedia.testkitchen.context.MediawikiData;
import org.wikimedia.testkitchen.context.PageData;
import org.wikimedia.testkitchen.context.PerformerData;
import org.wikimedia.testkitchen.event.Event;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class CurationFilter implements Predicate<Event> {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public CurationRules agentAppFlavorRules;
    public CurationRules agentAppInstallIdRules;
    public CurationRules agentAppThemeRules;
    public CurationRules agentAppVersionNameRules;
    public CurationRules agentAppVersionRules;
    public CurationRules agentClientPlatformFamilyRules;
    public CurationRules agentClientPlatformRules;
    public CurationRules agentDeviceFamilyRules;
    public CurationRules agentDeviceLanguageRules;
    public CurationRules agentReleaseStatusRules;
    public CurationRules mediawikiDatabase;
    public CurationRules pageContentLanguageRules;
    public ComparableCurationRules pageIdRules;
    public ComparableCurationRules pageNamespaceIdRules;
    public CurationRules pageNamespaceNameRules;
    public ComparableCurationRules pageRevisionIdRules;
    public CurationRules pageTitleRules;
    public CurationRules pageWikidataQidRules;
    public CollectionCurationRules performerGroupsRules;
    public ComparableCurationRules performerIdRules;
    public CurationRules performerIsLoggedInRules;
    public CurationRules performerIsTempRules;
    public CurationRules performerLanguageGroupsRules;
    public CurationRules performerLanguagePrimaryRules;
    public CurationRules performerNameRules;
    public CurationRules performerPageviewIdRules;
    public ComparableCurationRules performerRegistrationDtRules;
    public CurationRules performerSessionIdRules;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static boolean applyPredicate(Predicate predicate, Object obj) {
            if (predicate == null) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            return predicate.test(obj);
        }

        public final KSerializer serializer() {
            return CurationFilter$$serializer.INSTANCE;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(17)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(19)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(29)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(1)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(2)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(3)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(4)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(5)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(6)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(7)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(28)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(8)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(9)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(10)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(11)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(12)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(13)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(14)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(15)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(18)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(20)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(21)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(22)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(23)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(24)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(25)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(26)), ContextsKt.lazy(lazyThreadSafetyMode, new UtilsKt$$ExternalSyntheticLambda0(27))};
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Event event) {
        Event event2 = event;
        event2.getClass();
        AgentData agentData = event2.agentData;
        Companion companion = Companion;
        CurationRules curationRules = this.agentAppInstallIdRules;
        String str = agentData != null ? agentData.appInstallId : null;
        companion.getClass();
        if (!Companion.applyPredicate(curationRules, str)) {
            return false;
        }
        if (!Companion.applyPredicate(this.agentClientPlatformRules, agentData != null ? agentData.clientPlatform : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.agentClientPlatformFamilyRules, agentData != null ? agentData.clientPlatformFamily : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.agentAppFlavorRules, agentData != null ? agentData.appFlavor : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.agentAppThemeRules, agentData != null ? agentData.appTheme : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.agentAppVersionRules, agentData != null ? agentData.appVersion : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.agentAppVersionNameRules, agentData != null ? agentData.appVersionName : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.agentDeviceFamilyRules, agentData != null ? agentData.deviceFamily : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.agentDeviceLanguageRules, agentData != null ? agentData.deviceLanguage : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.agentReleaseStatusRules, agentData != null ? agentData.releaseStatus : null)) {
            return false;
        }
        MediawikiData mediawikiData = event2.mediawikiData;
        if (!Companion.applyPredicate(this.mediawikiDatabase, mediawikiData != null ? mediawikiData.database : null)) {
            return false;
        }
        PageData pageData = event2.pageData;
        if (!Companion.applyPredicate(this.pageIdRules, pageData != null ? pageData.id : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.pageNamespaceIdRules, pageData != null ? pageData.namespaceId : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.pageNamespaceNameRules, pageData != null ? pageData.namespaceName : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.pageTitleRules, pageData != null ? pageData.title : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.pageRevisionIdRules, pageData != null ? pageData.revisionId : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.pageWikidataQidRules, pageData != null ? pageData.wikidataItemQid : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.pageContentLanguageRules, pageData != null ? pageData.contentLanguage : null)) {
            return false;
        }
        PerformerData performerData = event2.performerData;
        if (!Companion.applyPredicate(this.performerIdRules, performerData != null ? performerData.id : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.performerNameRules, performerData != null ? performerData.name : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.performerSessionIdRules, performerData != null ? performerData.sessionId : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.performerPageviewIdRules, performerData != null ? performerData.pageviewId : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.performerGroupsRules, performerData != null ? performerData.groups : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.performerIsLoggedInRules, performerData != null ? performerData.isLoggedIn : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.performerIsTempRules, performerData != null ? performerData.isTemp : null)) {
            return false;
        }
        if (!Companion.applyPredicate(this.performerRegistrationDtRules, performerData != null ? performerData.registrationDt : null)) {
            return false;
        }
        if (Companion.applyPredicate(this.performerLanguageGroupsRules, performerData != null ? performerData.languageGroups : null)) {
            return Companion.applyPredicate(this.performerLanguagePrimaryRules, performerData != null ? performerData.languagePrimary : null);
        }
        return false;
    }
}
