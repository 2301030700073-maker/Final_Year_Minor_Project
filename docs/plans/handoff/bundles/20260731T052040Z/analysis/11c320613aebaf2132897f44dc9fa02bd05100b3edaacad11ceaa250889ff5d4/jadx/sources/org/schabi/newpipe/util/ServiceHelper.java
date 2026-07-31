package org.schabi.newpipe.util;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceManager;
import coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.google.common.collect.Sets$2$$ExternalSyntheticLambda0;
import j$.util.Collection;
import j$.util.Optional;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.services.youtube.YoutubeService;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ServiceHelper {
    public static final YoutubeService DEFAULT_FALLBACK_SERVICE;

    static {
        YoutubeService youtubeService = ServiceList.YouTube;
        youtubeService.getClass();
        DEFAULT_FALLBACK_SERVICE = youtubeService;
    }

    public static final int getIcon(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? R.drawable.ic_circle : R.drawable.ic_placeholder_bandcamp : R.drawable.ic_placeholder_peertube : R.drawable.ic_placeholder_media_ccc : R.drawable.ic_cloud : R.drawable.ic_smart_display;
    }

    public static final String getNameOfServiceById(int i) {
        Optional findFirst = Collection.EL.stream(ServiceList.SERVICES).filter(new Sets$2$$ExternalSyntheticLambda0(new ImageRequests_androidKt$$ExternalSyntheticLambda0(i, 4), 3)).findFirst();
        ServiceHelper$getNameOfServiceById$2 serviceHelper$getNameOfServiceById$2 = ServiceHelper$getNameOfServiceById$2.INSTANCE;
        Optional map = findFirst.map(new ListHelper$$ExternalSyntheticLambda0(28));
        ServiceHelper$getNameOfServiceById$3 serviceHelper$getNameOfServiceById$3 = ServiceHelper$getNameOfServiceById$3.INSTANCE;
        Object orElse = map.map(new ListHelper$$ExternalSyntheticLambda0(29)).orElse("<unknown>");
        orElse.getClass();
        return (String) orElse;
    }

    public static final StreamingService getSelectedService(Context context) {
        Object failure;
        context.getClass();
        SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
        sharedPreferences.getClass();
        String string = context.getString(R.string.current_service_key);
        string.getClass();
        String string2 = context.getString(R.string.default_service_value);
        string2.getClass();
        String string3 = sharedPreferences.getString(string, null);
        if (string3 != null) {
            string2 = string3;
        }
        try {
            failure = Utility.getService(string2);
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        return (StreamingService) (failure instanceof Result.Failure ? null : failure);
    }

    public static final int getSelectedServiceId(Context context) {
        context.getClass();
        StreamingService selectedService = getSelectedService(context);
        if (selectedService == null) {
            selectedService = DEFAULT_FALLBACK_SERVICE;
        }
        return selectedService.serviceId;
    }

    public static final StreamingService getServiceById(int i) {
        StreamingService streamingService;
        List list = ServiceList.SERVICES;
        list.getClass();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                streamingService = null;
                break;
            }
            streamingService = (StreamingService) it.next();
            if (streamingService.serviceId != i) {
                streamingService = null;
            }
            if (streamingService != null) {
                break;
            }
        }
        if (streamingService != null) {
            return streamingService;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2("No element of the collection was transformed to a non-null value.");
        return null;
    }
}
