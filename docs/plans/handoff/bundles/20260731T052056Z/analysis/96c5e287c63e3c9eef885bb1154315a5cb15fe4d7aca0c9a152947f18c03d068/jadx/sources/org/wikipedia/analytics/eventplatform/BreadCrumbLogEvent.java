package org.wikipedia.analytics.eventplatform;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import android.view.View;
import android.widget.CompoundButton;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver$CC;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.Constants;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.Event;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.settings.SettingsActivity;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class BreadCrumbLogEvent extends MobileAppsEventWithTemp {
    public static final Companion Companion = new Companion();
    public final String action;
    public final String app_primary_language_code;
    public final String screen_name;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BreadCrumbLogEvent(int i, Event.Meta meta, String str, boolean z, String str2, String str3, boolean z2, String str4, String str5, String str6) {
        super(i, meta, str, z, str2, str3, z2);
        if (448 != (i & 448)) {
            TuplesKt.throwMissingFieldException(i, 448, BreadCrumbLogEvent$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.screen_name = str4;
        this.action = str5;
        this.app_primary_language_code = str6;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.app_primary_language_code = ViewSizeResolver$CC.m();
        L.d(">>> " + str4 + "." + str5);
    }

    public BreadCrumbLogEvent(String str, String str2) {
        super("android.breadcrumbs_event");
        this.screen_name = str;
        this.action = str2;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.app_primary_language_code = ViewSizeResolver$CC.m();
        L.d(">>> " + str + "." + str2);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static void logClick(Context context, View view) {
            view.getClass();
            if (context instanceof SettingsActivity) {
                return;
            }
            String readableNameForView = WikiGamesEvent.getReadableNameForView(view);
            if (view.getTag() instanceof String) {
                Object tag = view.getTag();
                tag.getClass();
                if (((String) tag).length() > 0) {
                    Object tag2 = view.getTag();
                    tag2.getClass();
                    readableNameForView = readableNameForView + "." + ((String) tag2);
                }
            }
            String str = readableNameForView + "." + (view instanceof CompoundButton ? !((CompoundButton) view).isChecked() ? "on" : "off" : "click");
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(context, null), str));
        }

        public static void logScreenShown(Context context, ExtendedBottomSheetDialogFragment extendedBottomSheetDialogFragment) {
            Intent intent;
            AppCompatActivity activity;
            if (extendedBottomSheetDialogFragment == null || (activity = extendedBottomSheetDialogFragment.getActivity()) == null || (intent = activity.getIntent()) == null) {
                Activity activity2 = context instanceof Activity ? (Activity) context : null;
                intent = activity2 != null ? activity2.getIntent() : null;
            }
            java.io.Serializable serializableExtra = intent != null ? intent.getSerializableExtra("invokeSource") : null;
            Constants.InvokeSource invokeSource = serializableExtra instanceof Constants.InvokeSource ? (Constants.InvokeSource) serializableExtra : null;
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            String readableScreenName = WikiGamesEvent.getReadableScreenName(context, extendedBottomSheetDialogFragment);
            String m = invokeSource != null ? Modifier.CC.m(".from.", invokeSource.getValue()) : null;
            if (m == null) {
                m = "";
            }
            EventPlatformClient.submit(new BreadCrumbLogEvent(readableScreenName, "show".concat(m)));
        }

        public static void logSettingsSelection(Context context, String str, Boolean bool) {
            context.getClass();
            str.getClass();
            String m = Animation.CC.m(str, ".", Animation.CC.m23m((Object) bool) ? bool.equals(Boolean.TRUE) ? "on" : "off" : "click");
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            EventPlatformClient.submit(new BreadCrumbLogEvent(context.getClass().getSimpleName(), m));
        }

        public static void logTooltipShown(Context context, View view) {
            view.getClass();
            String readableNameForView = WikiGamesEvent.getReadableNameForView(view);
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            EventPlatformClient.submit(new BreadCrumbLogEvent(context.getClass().getSimpleName(), readableNameForView + ".tooltip"));
        }

        public final KSerializer serializer() {
            return BreadCrumbLogEvent$$serializer.INSTANCE;
        }

        public static void logClick(Context context, MenuItem menuItem) {
            menuItem.getClass();
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(context, null), context.getResources().getResourceEntryName(menuItem.getItemId()) + ".click"));
        }

        public static void logClick(Context context, String str) {
            context.getClass();
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(context, null), str.concat(".click")));
        }
    }
}
