package org.wikipedia.settings.homefeed;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.activity.result.ActivityResult;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavBackStackEntryState;
import androidx.navigation.NavHostController;
import androidx.navigation.internal.NavControllerImpl;
import androidx.room.Room;
import androidx.work.Operation$State;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.wikipedia.R;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Bundle bundle;
        Bundle[] bundleArr;
        Throwable th;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Context context = this.f$0;
        switch (i) {
            case 0:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                int i2 = activityResult.resultCode;
                if (i2 == -1 || i2 == 100) {
                    context.getClass();
                    Activity activity = (Activity) context;
                    if (i2 == 100) {
                        ShareUtil.showMessage(activity, R.string.home_feed_settings_feed_configuration_interests_updated_message);
                    }
                }
                return unit;
            case 1:
                Bundle bundle2 = (Bundle) obj;
                NavHostController createNavController$NavHostControllerKt__NavHostController_androidKt = ExceptionsKt.createNavController$NavHostControllerKt__NavHostController_androidKt(context);
                if (bundle2 != null) {
                    bundle2.setClassLoader(createNavController$NavHostControllerKt__NavHostController_androidKt.context.getClassLoader());
                }
                NavControllerImpl navControllerImpl = createNavController$NavHostControllerKt__NavHostController_androidKt.impl;
                LinkedHashMap linkedHashMap = navControllerImpl.backStackStates;
                Throwable th2 = null;
                if (bundle2 == null) {
                    th = null;
                } else {
                    if (bundle2.containsKey("android-support-nav:controller:navigatorState")) {
                        bundle = bundle2.getBundle("android-support-nav:controller:navigatorState");
                        if (bundle == null) {
                            Operation$State.keyOrValueNotFoundError("android-support-nav:controller:navigatorState");
                            throw null;
                        }
                    } else {
                        bundle = null;
                    }
                    navControllerImpl.navigatorStateToRestore = bundle;
                    if (bundle2.containsKey("android-support-nav:controller:backStack")) {
                        ArrayList parcelableArrayList = Room.getParcelableArrayList(bundle2, "android-support-nav:controller:backStack", UnsignedKt.getJavaClass(Reflection.factory.getOrCreateKotlinClass(Bundle.class)));
                        if (parcelableArrayList == null) {
                            Operation$State.keyOrValueNotFoundError("android-support-nav:controller:backStack");
                            throw null;
                        }
                        bundleArr = (Bundle[]) parcelableArrayList.toArray(new Bundle[0]);
                    } else {
                        bundleArr = null;
                    }
                    navControllerImpl.backStackToRestore = bundleArr;
                    linkedHashMap.clear();
                    if (bundle2.containsKey("android-support-nav:controller:backStackDestIds") && bundle2.containsKey("android-support-nav:controller:backStackIds")) {
                        int[] intArray = bundle2.getIntArray("android-support-nav:controller:backStackDestIds");
                        if (intArray == null) {
                            Operation$State.keyOrValueNotFoundError("android-support-nav:controller:backStackDestIds");
                            throw null;
                        }
                        ArrayList<String> stringArrayList = bundle2.getStringArrayList("android-support-nav:controller:backStackIds");
                        if (stringArrayList == null) {
                            Operation$State.keyOrValueNotFoundError("android-support-nav:controller:backStackIds");
                            throw null;
                        }
                        int length = intArray.length;
                        int i3 = 0;
                        int i4 = 0;
                        while (i3 < length) {
                            int i5 = i4 + 1;
                            Throwable th3 = th2;
                            navControllerImpl.backStackMap.put(Integer.valueOf(intArray[i3]), !Intrinsics.areEqual(stringArrayList.get(i4), "") ? (String) stringArrayList.get(i4) : th3);
                            i3++;
                            th2 = th3;
                            i4 = i5;
                        }
                    }
                    th = th2;
                    if (bundle2.containsKey("android-support-nav:controller:backStackStates")) {
                        ArrayList<String> stringArrayList2 = bundle2.getStringArrayList("android-support-nav:controller:backStackStates");
                        if (stringArrayList2 == null) {
                            Operation$State.keyOrValueNotFoundError("android-support-nav:controller:backStackStates");
                            throw th;
                        }
                        for (String str : stringArrayList2) {
                            if (bundle2.containsKey("android-support-nav:controller:backStackStates:" + str)) {
                                String m = Modifier.CC.m("android-support-nav:controller:backStackStates:", str);
                                ArrayList parcelableArrayList2 = Room.getParcelableArrayList(bundle2, m, UnsignedKt.getJavaClass(Reflection.factory.getOrCreateKotlinClass(Bundle.class)));
                                if (parcelableArrayList2 == null) {
                                    Operation$State.keyOrValueNotFoundError(m);
                                    throw th;
                                }
                                ArrayDeque arrayDeque = new ArrayDeque(parcelableArrayList2.size());
                                Iterator it = parcelableArrayList2.iterator();
                                while (it.hasNext()) {
                                    arrayDeque.addLast(new NavBackStackEntryState((Bundle) it.next()));
                                }
                                linkedHashMap.put(str, arrayDeque);
                            }
                        }
                    }
                }
                if (bundle2 != null) {
                    boolean z = bundle2.getBoolean("android-support-nav:controller:deepLinkHandled", false);
                    Boolean valueOf = (z || !bundle2.getBoolean("android-support-nav:controller:deepLinkHandled", true)) ? Boolean.valueOf(z) : th;
                    createNavController$NavHostControllerKt__NavHostController_androidKt.deepLinkHandled = valueOf != 0 ? valueOf.booleanValue() : false;
                }
                return createNavController$NavHostControllerKt__NavHostController_androidKt;
            default:
                HomePreferenceType homePreferenceType = (HomePreferenceType) obj;
                homePreferenceType.getClass();
                SVGAndroidRenderer instrument = ContextKt.getInstrument(context);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, homePreferenceType.name(), "feed_default_view_select", null, null, 242);
                }
                Prefs prefs = Prefs.INSTANCE;
                PrefsIoUtil.setString(R.string.preference_key_home_preference_selection, homePreferenceType.name());
                return unit;
        }
    }
}
