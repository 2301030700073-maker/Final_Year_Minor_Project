package org.wikipedia.places;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.page.NearbyPage;
import org.wikipedia.feed.HomeViewModel$getPlacesCards$$inlined$sortedBy$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PlacesFragmentViewModel$fetchNearbyPages$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ double $latitude;
    public final /* synthetic */ double $longitude;
    public final /* synthetic */ int $radius;
    public int label;
    public final /* synthetic */ PlacesFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlacesFragmentViewModel$fetchNearbyPages$2(PlacesFragmentViewModel placesFragmentViewModel, double d, double d2, int i, Continuation continuation) {
        super(2, continuation);
        this.this$0 = placesFragmentViewModel;
        this.$latitude = d;
        this.$longitude = d2;
        this.$radius = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PlacesFragmentViewModel$fetchNearbyPages$2(this.this$0, this.$latitude, this.$longitude, this.$radius, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PlacesFragmentViewModel$fetchNearbyPages$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object geoSearch;
        String str;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
            WikiSite.Companion companion = WikiSite.Companion;
            String placesWikiCode = Prefs.getPlacesWikiCode();
            companion.getClass();
            Service service = ServiceFactory.get(WikiSite.Companion.forLanguageCode(placesWikiCode));
            String str2 = this.$latitude + "|" + this.$longitude;
            this.label = 1;
            geoSearch = service.getGeoSearch(str2, this.$radius, 75, 75, this);
            if (geoSearch == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            geoSearch = obj;
        }
        MwQueryResult mwQueryResult = ((MwQueryResponse) geoSearch).query;
        List list = mwQueryResult != null ? mwQueryResult.pages : null;
        if (list == null) {
            list = EmptyList.INSTANCE;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((MwQueryPage) obj2).coordinates != null) {
                arrayList.add(obj2);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            MwQueryPage mwQueryPage = (MwQueryPage) it.next();
            int i2 = mwQueryPage.pageId;
            List list2 = mwQueryPage.coordinates;
            String str3 = mwQueryPage.title;
            WikiSite.Companion companion2 = WikiSite.Companion;
            String placesWikiCode2 = Prefs.getPlacesWikiCode();
            companion2.getClass();
            WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(placesWikiCode2);
            String thumbUrl = mwQueryPage.thumbUrl();
            if (thumbUrl == null || thumbUrl.length() == 0) {
                str = null;
            } else {
                Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
                String thumbUrl2 = mwQueryPage.thumbUrl();
                thumbUrl2.getClass();
                str = ImageUrlUtil.getUrlForPreferredSize(120, thumbUrl2);
            }
            String str4 = mwQueryPage.description;
            String placesWikiCode3 = Prefs.getPlacesWikiCode();
            companion2.getClass();
            PageTitle pageTitle = new PageTitle(str3, forLanguageCode, str, str4, mwQueryPage.displayTitle(WikiSite.Companion.forLanguageCode(placesWikiCode3).languageCode));
            list2.getClass();
            arrayList2.add(new NearbyPage(i2, pageTitle, ((MwQueryPage.Coordinates) list2.get(0)).lat, ((MwQueryPage.Coordinates) list2.get(0)).lon));
        }
        PlacesFragmentViewModel placesFragmentViewModel = this.this$0;
        placesFragmentViewModel.nearbyPagesLiveData.postValue(new Resource.Success(CollectionsKt.sortedWith(arrayList2, new HomeViewModel$getPlacesCards$$inlined$sortedBy$1(5, placesFragmentViewModel))));
        return Unit.INSTANCE;
    }
}
