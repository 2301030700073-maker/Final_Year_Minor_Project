package org.wikipedia.gallery;

import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.bridge.JavaScriptActionHandler$ImageHitInfo;
import org.wikipedia.commons.ImageTagsProvider;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.dataclient.wikidata.Entities;
import org.wikipedia.donate.DonateDialog$onCreateView$3;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.util.Resource;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GalleryActivity$onCreate$10 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ GalleryActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GalleryActivity$onCreate$10(GalleryActivity galleryActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = galleryActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        GalleryActivity galleryActivity = this.this$0;
        switch (i) {
            case 0:
                return new GalleryActivity$onCreate$10(galleryActivity, continuation, 0);
            case 1:
                return new GalleryActivity$onCreate$10(galleryActivity, continuation, 1);
            default:
                return new GalleryActivity$onCreate$10(galleryActivity, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((GalleryActivity$onCreate$10) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        final GalleryActivity galleryActivity = this.this$0;
        final int i2 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                    DonateDialog$onCreateView$3.AnonymousClass1 anonymousClass1 = new DonateDialog$onCreateView$3.AnonymousClass1(16, galleryActivity, continuation);
                    this.label = 1;
                    if (ViewModelKt.repeatOnLifecycle(galleryActivity, lifecycle$State, anonymousClass1, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
                    ReadonlyStateFlow readonlyStateFlow = galleryActivity.getViewModel().uiState;
                    final int i5 = 0;
                    FlowCollector flowCollector = new FlowCollector() { // from class: org.wikipedia.gallery.GalleryActivity$onCreate$10$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i6;
                            ImageInfo mediaInfo;
                            Map map;
                            Map labels;
                            Collection values;
                            int i7 = i5;
                            Unit unit = Unit.INSTANCE;
                            GalleryActivity galleryActivity2 = galleryActivity;
                            switch (i7) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (resource instanceof Resource.Loading) {
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo2 = GalleryActivity.TRANSITION_INFO;
                                        ActivityGalleryBinding activityGalleryBinding = galleryActivity2.binding;
                                        if (activityGalleryBinding == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((LinearProgressIndicator) activityGalleryBinding.progressBar).setVisibility(0);
                                    } else if (resource instanceof Resource.Success) {
                                        ArrayList items = ((MediaList) ((Resource.Success) resource).data).getItems("image", "video");
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo3 = GalleryActivity.TRANSITION_INFO;
                                        ActivityGalleryBinding activityGalleryBinding2 = galleryActivity2.binding;
                                        if (activityGalleryBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((LinearProgressIndicator) activityGalleryBinding2.progressBar).setVisibility(8);
                                        String str = galleryActivity2.getViewModel().initialFilename;
                                        if (str != null) {
                                            Iterator it = items.iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    MediaListItem mediaListItem = (MediaListItem) it.next();
                                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                                    if (StringUtil.removeNamespace(mediaListItem.title).equals(StringsKt.substringAfter$default(str, ':'))) {
                                                        i6 = items.indexOf(mediaListItem);
                                                    }
                                                } else {
                                                    i6 = -1;
                                                }
                                            }
                                            if (i6 == -1) {
                                                items.add(0, new MediaListItem(str, "", null, false, 0, EmptyList.INSTANCE));
                                                i6 = 0;
                                            }
                                        } else {
                                            i6 = -1;
                                        }
                                        GalleryActivity.GalleryItemAdapter galleryItemAdapter = galleryActivity2.galleryAdapter;
                                        if (galleryItemAdapter == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("galleryAdapter");
                                            throw null;
                                        }
                                        ArrayList arrayList = galleryItemAdapter.list;
                                        arrayList.clear();
                                        arrayList.addAll(items);
                                        galleryItemAdapter.notifyDataSetChanged();
                                        if (i6 != -1) {
                                            ActivityGalleryBinding activityGalleryBinding3 = galleryActivity2.binding;
                                            if (activityGalleryBinding3 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((ViewPager2) activityGalleryBinding3.pager).setCurrentItem(i6, false);
                                        } else {
                                            int i8 = galleryActivity2.initialImageIndex;
                                            if (i8 >= 0) {
                                                GalleryActivity.GalleryItemAdapter galleryItemAdapter2 = galleryActivity2.galleryAdapter;
                                                if (galleryItemAdapter2 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("galleryAdapter");
                                                    throw null;
                                                }
                                                if (i8 < galleryItemAdapter2.list.size()) {
                                                    ActivityGalleryBinding activityGalleryBinding4 = galleryActivity2.binding;
                                                    if (activityGalleryBinding4 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((ViewPager2) activityGalleryBinding4.pager).setCurrentItem(galleryActivity2.initialImageIndex, false);
                                                }
                                            }
                                        }
                                    } else if (resource instanceof Resource.Error) {
                                        galleryActivity2.onError(((Resource.Error) resource).throwable);
                                    }
                                    return unit;
                                default:
                                    Resource resource2 = (Resource) obj2;
                                    if (resource2 instanceof Resource.Loading) {
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo4 = GalleryActivity.TRANSITION_INFO;
                                        ActivityGalleryBinding activityGalleryBinding5 = galleryActivity2.binding;
                                        if (activityGalleryBinding5 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((LinearProgressIndicator) activityGalleryBinding5.progressBar).setVisibility(0);
                                    } else if (resource2 instanceof Resource.Success) {
                                        Pair pair = (Pair) ((Resource.Success) resource2).data;
                                        boolean booleanValue = ((Boolean) pair.first).booleanValue();
                                        Entities.Entity entity = (Entities.Entity) pair.second;
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo5 = GalleryActivity.TRANSITION_INFO;
                                        ActivityGalleryBinding activityGalleryBinding6 = galleryActivity2.binding;
                                        if (activityGalleryBinding6 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((LinearProgressIndicator) activityGalleryBinding6.progressBar).setVisibility(8);
                                        GalleryItemFragment currentItem = galleryActivity2.getCurrentItem();
                                        Map map2 = EmptyMap.INSTANCE;
                                        if (currentItem != null && (mediaInfo = currentItem.getMediaInfo()) != null) {
                                            galleryActivity2.getViewModel();
                                            if (entity == null || (labels = entity.getLabels()) == null || (values = labels.values()) == null) {
                                                map = null;
                                            } else {
                                                Collection<Entities.Label> collection = values;
                                                int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(collection, 10));
                                                if (mapCapacity < 16) {
                                                    mapCapacity = 16;
                                                }
                                                map = new LinkedHashMap(mapCapacity);
                                                for (Entities.Label label : collection) {
                                                    map.put(label.language, label.value);
                                                }
                                            }
                                            if (map == null) {
                                                map = map2;
                                            }
                                            mediaInfo.captions = map;
                                        }
                                        galleryActivity2.getViewModel();
                                        Map statements = entity != null ? entity.getStatements() : null;
                                        if (statements != null) {
                                            map2 = statements;
                                        }
                                        galleryActivity2.updateGalleryDescription(ImageTagsProvider.getDepictsClaims(map2).size(), booleanValue);
                                    } else if (resource2 instanceof Resource.Error) {
                                        Throwable th = ((Resource.Error) resource2).throwable;
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo6 = GalleryActivity.TRANSITION_INFO;
                                        L.e(th);
                                        galleryActivity2.updateGalleryDescription(0, false);
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(flowCollector, this) == coroutineSingletons2) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo2 = GalleryActivity.TRANSITION_INFO;
                    ReadonlyStateFlow readonlyStateFlow2 = galleryActivity.getViewModel().descriptionState;
                    FlowCollector flowCollector2 = new FlowCollector() { // from class: org.wikipedia.gallery.GalleryActivity$onCreate$10$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62;
                            ImageInfo mediaInfo;
                            Map map;
                            Map labels;
                            Collection values;
                            int i7 = i2;
                            Unit unit = Unit.INSTANCE;
                            GalleryActivity galleryActivity2 = galleryActivity;
                            switch (i7) {
                                case 0:
                                    Resource resource = (Resource) obj2;
                                    if (resource instanceof Resource.Loading) {
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo22 = GalleryActivity.TRANSITION_INFO;
                                        ActivityGalleryBinding activityGalleryBinding = galleryActivity2.binding;
                                        if (activityGalleryBinding == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((LinearProgressIndicator) activityGalleryBinding.progressBar).setVisibility(0);
                                    } else if (resource instanceof Resource.Success) {
                                        ArrayList items = ((MediaList) ((Resource.Success) resource).data).getItems("image", "video");
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo3 = GalleryActivity.TRANSITION_INFO;
                                        ActivityGalleryBinding activityGalleryBinding2 = galleryActivity2.binding;
                                        if (activityGalleryBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((LinearProgressIndicator) activityGalleryBinding2.progressBar).setVisibility(8);
                                        String str = galleryActivity2.getViewModel().initialFilename;
                                        if (str != null) {
                                            Iterator it = items.iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    MediaListItem mediaListItem = (MediaListItem) it.next();
                                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                                    if (StringUtil.removeNamespace(mediaListItem.title).equals(StringsKt.substringAfter$default(str, ':'))) {
                                                        i62 = items.indexOf(mediaListItem);
                                                    }
                                                } else {
                                                    i62 = -1;
                                                }
                                            }
                                            if (i62 == -1) {
                                                items.add(0, new MediaListItem(str, "", null, false, 0, EmptyList.INSTANCE));
                                                i62 = 0;
                                            }
                                        } else {
                                            i62 = -1;
                                        }
                                        GalleryActivity.GalleryItemAdapter galleryItemAdapter = galleryActivity2.galleryAdapter;
                                        if (galleryItemAdapter == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("galleryAdapter");
                                            throw null;
                                        }
                                        ArrayList arrayList = galleryItemAdapter.list;
                                        arrayList.clear();
                                        arrayList.addAll(items);
                                        galleryItemAdapter.notifyDataSetChanged();
                                        if (i62 != -1) {
                                            ActivityGalleryBinding activityGalleryBinding3 = galleryActivity2.binding;
                                            if (activityGalleryBinding3 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((ViewPager2) activityGalleryBinding3.pager).setCurrentItem(i62, false);
                                        } else {
                                            int i8 = galleryActivity2.initialImageIndex;
                                            if (i8 >= 0) {
                                                GalleryActivity.GalleryItemAdapter galleryItemAdapter2 = galleryActivity2.galleryAdapter;
                                                if (galleryItemAdapter2 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("galleryAdapter");
                                                    throw null;
                                                }
                                                if (i8 < galleryItemAdapter2.list.size()) {
                                                    ActivityGalleryBinding activityGalleryBinding4 = galleryActivity2.binding;
                                                    if (activityGalleryBinding4 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((ViewPager2) activityGalleryBinding4.pager).setCurrentItem(galleryActivity2.initialImageIndex, false);
                                                }
                                            }
                                        }
                                    } else if (resource instanceof Resource.Error) {
                                        galleryActivity2.onError(((Resource.Error) resource).throwable);
                                    }
                                    return unit;
                                default:
                                    Resource resource2 = (Resource) obj2;
                                    if (resource2 instanceof Resource.Loading) {
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo4 = GalleryActivity.TRANSITION_INFO;
                                        ActivityGalleryBinding activityGalleryBinding5 = galleryActivity2.binding;
                                        if (activityGalleryBinding5 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((LinearProgressIndicator) activityGalleryBinding5.progressBar).setVisibility(0);
                                    } else if (resource2 instanceof Resource.Success) {
                                        Pair pair = (Pair) ((Resource.Success) resource2).data;
                                        boolean booleanValue = ((Boolean) pair.first).booleanValue();
                                        Entities.Entity entity = (Entities.Entity) pair.second;
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo5 = GalleryActivity.TRANSITION_INFO;
                                        ActivityGalleryBinding activityGalleryBinding6 = galleryActivity2.binding;
                                        if (activityGalleryBinding6 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((LinearProgressIndicator) activityGalleryBinding6.progressBar).setVisibility(8);
                                        GalleryItemFragment currentItem = galleryActivity2.getCurrentItem();
                                        Map map2 = EmptyMap.INSTANCE;
                                        if (currentItem != null && (mediaInfo = currentItem.getMediaInfo()) != null) {
                                            galleryActivity2.getViewModel();
                                            if (entity == null || (labels = entity.getLabels()) == null || (values = labels.values()) == null) {
                                                map = null;
                                            } else {
                                                Collection<Entities.Label> collection = values;
                                                int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(collection, 10));
                                                if (mapCapacity < 16) {
                                                    mapCapacity = 16;
                                                }
                                                map = new LinkedHashMap(mapCapacity);
                                                for (Entities.Label label : collection) {
                                                    map.put(label.language, label.value);
                                                }
                                            }
                                            if (map == null) {
                                                map = map2;
                                            }
                                            mediaInfo.captions = map;
                                        }
                                        galleryActivity2.getViewModel();
                                        Map statements = entity != null ? entity.getStatements() : null;
                                        if (statements != null) {
                                            map2 = statements;
                                        }
                                        galleryActivity2.updateGalleryDescription(ImageTagsProvider.getDepictsClaims(map2).size(), booleanValue);
                                    } else if (resource2 instanceof Resource.Error) {
                                        Throwable th = ((Resource.Error) resource2).throwable;
                                        JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo6 = GalleryActivity.TRANSITION_INFO;
                                        L.e(th);
                                        galleryActivity2.updateGalleryDescription(0, false);
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow2.$$delegate_0.collect(flowCollector2, this) == coroutineSingletons3) {
                        break;
                    }
                } else if (i6 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
        }
        return null;
    }
}
