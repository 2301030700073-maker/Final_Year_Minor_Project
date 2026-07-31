package org.wikipedia.analytics.eventplatform;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.Event;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.util.ActiveTimer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ImageRecommendationsEvent extends MobileAppsEventWithTemp {
    public static final Companion Companion = new Companion();
    public static final List reasons = Room.listOf((Object[]) new String[]{"notrelevant", "noinfo", "offensive", "lowquality", "unfamiliar", "other"});
    public static final ActiveTimer timer = new ActiveTimer();
    public final String action;
    public final String action_data;
    public final String active_interface;
    public final String primary_language;
    public final String wiki_id;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DescriptionEditActivity.Action.values().length];
                try {
                    iArr[DescriptionEditActivity.Action.ADD_DESCRIPTION.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[DescriptionEditActivity.Action.ADD_CAPTION.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[DescriptionEditActivity.Action.TRANSLATE_CAPTION.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static String getActionDataString$default(Companion companion, String str, String str2, String str3, String str4, String str5, Long l, Boolean bool, Boolean bool2, boolean z, int i) {
            String m;
            String str6;
            String str7;
            String str8 = null;
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            if ((i & 8) != 0) {
                str4 = null;
            }
            if ((i & 16) != 0) {
                str5 = null;
            }
            if ((i & 32) != 0) {
                l = null;
            }
            if ((i & 64) != 0) {
                bool = null;
            }
            if ((i & 128) != 0) {
                bool2 = null;
            }
            if ((i & 256) != 0) {
                z = false;
            }
            companion.getClass();
            if (str != null) {
                try {
                    String encode = URLEncoder.encode(str, "UTF-8");
                    encode.getClass();
                    m = Animation.CC.m("filename: ", StringsKt__StringsJVMKt.replace$default(encode, "+", "%20"), ", ");
                } catch (UnsupportedEncodingException e) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                    return null;
                }
            } else {
                m = null;
            }
            String str9 = "";
            if (m == null) {
                m = "";
            }
            String m2 = str2 != null ? Animation.CC.m("recommendation_source: ", str2, ", ") : null;
            if (m2 == null) {
                m2 = "";
            }
            String m3 = str3 != null ? Animation.CC.m("recommendation_source_project: ", str3, ", ") : null;
            if (m3 == null) {
                m3 = "";
            }
            String m4 = str4 != null ? Animation.CC.m("rejection_reasons: ", str4, ", ") : null;
            if (m4 == null) {
                m4 = "";
            }
            String m5 = str5 != null ? Animation.CC.m("acceptance_state: ", str5, ", ") : null;
            if (m5 == null) {
                m5 = "";
            }
            if (l != null) {
                str6 = "revision_id: " + l.longValue() + ", ";
            } else {
                str6 = null;
            }
            if (str6 == null) {
                str6 = "";
            }
            if (bool != null) {
                str7 = "caption_add: " + bool.booleanValue() + ", ";
            } else {
                str7 = null;
            }
            if (str7 == null) {
                str7 = "";
            }
            if (bool2 != null) {
                str8 = "alt_text_add: " + bool2.booleanValue() + ", ";
            }
            if (str8 == null) {
                str8 = "";
            }
            if (z) {
                ActiveTimer activeTimer = ImageRecommendationsEvent.timer;
                str9 = Animation.CC.m("time_spent: ", (activeTimer.isPaused ? activeTimer.pauseMillis : System.currentTimeMillis()) - activeTimer.startMillis);
            }
            StringBuilder m352m = Modifier.CC.m352m(m, m2, m3, m4, m5);
            m352m.append(str6);
            m352m.append(str7);
            m352m.append(str8);
            m352m.append(str9);
            return m352m.toString();
        }

        public static void logAction(String str, String str2, String str3, String str4) {
            str3.getClass();
            str4.getClass();
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            EventPlatformClient.submit(new ImageRecommendationsEvent(str, str2, str3, ViewSizeResolver$CC.m(), str4));
        }

        public static /* synthetic */ void logAction$default(Companion companion, String str, String str2, String str3, int i) {
            if ((i & 4) != 0) {
                str3 = "";
            }
            companion.getClass();
            logAction(str, str2, str3, "");
        }

        public static void logImpression(String str, String str2, String str3) {
            str2.getClass();
            str3.getClass();
            if (str.equals("recommendedimagetoolbar")) {
                ActiveTimer activeTimer = ImageRecommendationsEvent.timer;
                activeTimer.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                activeTimer.startMillis = currentTimeMillis;
                activeTimer.pauseMillis = currentTimeMillis;
            }
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            EventPlatformClient.submit(new ImageRecommendationsEvent("impression", str, str2, ViewSizeResolver$CC.m(), str3));
        }

        public static /* synthetic */ void logImpression$default(Companion companion, String str, String str2, int i) {
            if ((i & 2) != 0) {
                str2 = "";
            }
            companion.getClass();
            logImpression(str, str2, "");
        }

        public final void logEditSuccess(DescriptionEditActivity.Action action, String str, long j) {
            action.getClass();
            str.getClass();
            int i = WhenMappings.$EnumSwitchMapping$0[action.ordinal()];
            if (i == 1) {
                logAction("edit_success", "se_add_description", getActionDataString$default(this, null, null, null, null, null, Long.valueOf(j), null, null, false, 479), str);
                return;
            }
            if (i == 2) {
                logAction("edit_success", "se_translate_description", getActionDataString$default(this, null, null, null, null, null, Long.valueOf(j), null, null, false, 479), str);
                return;
            }
            if (i == 3) {
                logAction("edit_success", "se_add_caption", getActionDataString$default(this, null, null, null, null, null, Long.valueOf(j), null, null, false, 479), str);
            } else if (i != 4) {
                logAction("edit_success", "se_add_image_tags", getActionDataString$default(this, null, null, null, null, null, Long.valueOf(j), null, null, false, 479), str);
            } else {
                logAction("edit_success", "se_translate_caption", getActionDataString$default(this, null, null, null, null, null, Long.valueOf(j), null, null, false, 479), str);
            }
        }

        public final KSerializer serializer() {
            return ImageRecommendationsEvent$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImageRecommendationsEvent(int i, Event.Meta meta, String str, boolean z, String str2, String str3, boolean z2, String str4, String str5, String str6, String str7, String str8) {
        super(i, meta, str, z, str2, str3, z2);
        if (1984 != (i & 1984)) {
            TuplesKt.throwMissingFieldException(i, 1984, ImageRecommendationsEvent$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.action = str4;
        this.active_interface = str5;
        this.action_data = str6;
        this.primary_language = str7;
        this.wiki_id = str8;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageRecommendationsEvent(String str, String str2, String str3, String str4, String str5) {
        super("android.image_recommendation_event");
        str3.getClass();
        str4.getClass();
        str5.getClass();
        this.action = str;
        this.active_interface = str2;
        this.action_data = str3;
        this.primary_language = str4;
        this.wiki_id = str5;
    }
}
