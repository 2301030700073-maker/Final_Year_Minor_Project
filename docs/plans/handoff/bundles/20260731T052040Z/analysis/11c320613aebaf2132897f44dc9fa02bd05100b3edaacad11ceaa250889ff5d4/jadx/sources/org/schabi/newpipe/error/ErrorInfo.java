package org.schabi.newpipe.error;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Html;
import android.text.Spanned;
import android.text.SpannedString;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.text.CharsKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.AccountTerminatedException;
import org.schabi.newpipe.extractor.exceptions.AgeRestrictedContentException;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.GeographicRestrictionException;
import org.schabi.newpipe.extractor.exceptions.PaidContentException;
import org.schabi.newpipe.extractor.exceptions.PrivateContentException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.exceptions.SignInConfirmNotBotException;
import org.schabi.newpipe.extractor.exceptions.SoundCloudGoPlusContentException;
import org.schabi.newpipe.extractor.exceptions.UnsupportedContentInCountryException;
import org.schabi.newpipe.extractor.exceptions.YoutubeMusicPremiumContentException;
import org.schabi.newpipe.local.subscription.workers.SubscriptionImportInput;
import org.schabi.newpipe.player.TimestampChangeData;
import org.schabi.newpipe.player.mediasource.FailedMediaSource;
import org.schabi.newpipe.player.resolver.PlaybackResolver$ResolverException;
import org.schabi.newpipe.util.SavedState;
import us.shandian.giga.get.MissionRecoveryInfo;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ErrorInfo implements Parcelable {
    public final boolean isReportable;
    public final boolean isRetryable;
    public final Companion.ErrorMessage message;
    public final String openInBrowserUrl;
    public final String recaptchaUrl;
    public final String request;
    public final Integer serviceId;
    public final String[] stackTraces;
    public final UserAction userAction;
    public static final Companion Companion = new Companion();
    public static final Parcelable.Creator<ErrorInfo> CREATOR = new Creator(0);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class ErrorMessage implements Parcelable {
            public static final Parcelable.Creator<ErrorMessage> CREATOR = new Creator(1);
            public final String[] formatArgs;
            public final int stringRes;

            public ErrorMessage(String[] strArr, int i) {
                strArr.getClass();
                this.stringRes = i;
                this.formatArgs = strArr;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final CharSequence getText(Context context) {
                context.getClass();
                Context contextForLanguage = StaticImageDecoderKt.getContextForLanguage(context);
                contextForLanguage.getClass();
                String[] strArr = this.formatArgs;
                int length = strArr.length;
                int i = this.stringRes;
                if (length == 0) {
                    CharSequence text = contextForLanguage.getText(i);
                    text.getClass();
                    return text;
                }
                Resources resources = contextForLanguage.getResources();
                resources.getClass();
                Object[] copyOf = Arrays.copyOf(strArr, strArr.length);
                CharSequence text2 = resources.getText(i);
                text2.getClass();
                SpannedString valueOf = SpannedString.valueOf(text2);
                valueOf.getClass();
                int i2 = Build.VERSION.SDK_INT;
                String html = i2 >= 24 ? Utility.toHtml(valueOf) : Html.toHtml(valueOf);
                html.getClass();
                Object[] copyOf2 = Arrays.copyOf(copyOf, copyOf.length);
                String format = String.format(html, Arrays.copyOf(copyOf2, copyOf2.length));
                Spanned fromHtml = i2 >= 24 ? Utility.fromHtml(format) : Html.fromHtml(format, null, null);
                fromHtml.getClass();
                return fromHtml;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.getClass();
                parcel.writeInt(this.stringRes);
                parcel.writeStringArray(this.formatArgs);
            }
        }

        public static ErrorMessage getMessage(Throwable th, UserAction userAction, Integer num) {
            if (th instanceof ExoPlaybackException) {
                ExoPlaybackException exoPlaybackException = (ExoPlaybackException) th;
                Throwable cause = exoPlaybackException.getCause();
                if (cause instanceof HttpDataSource.InvalidResponseCodeException) {
                    int i = ((HttpDataSource.InvalidResponseCodeException) cause).responseCode;
                    if (i == 403) {
                        return (num != null && num.intValue() == ServiceList.YouTube.serviceId) ? new ErrorMessage(new String[0], R.string.youtube_player_http_403) : new ErrorMessage(new String[0], R.string.player_http_403);
                    }
                    return new ErrorMessage(new String[]{String.valueOf(i)}, R.string.player_http_invalid_status);
                }
                if ((cause instanceof Loader.UnexpectedLoaderException) && (((Loader.UnexpectedLoaderException) cause).getCause() instanceof ExtractionException)) {
                    return getMessage(th, userAction, num);
                }
                int i2 = exoPlaybackException.type;
                return i2 == 0 ? new ErrorMessage(new String[0], R.string.player_stream_failure) : i2 == 2 ? new ErrorMessage(new String[0], R.string.player_recoverable_failure) : new ErrorMessage(new String[0], R.string.player_unrecoverable_failure);
            }
            if (th instanceof FailedMediaSource.StreamInfoLoadException) {
                return getMessage(((FailedMediaSource.StreamInfoLoadException) th).getCause(), userAction, num);
            }
            if (th instanceof PlaybackResolver$ResolverException) {
                return new ErrorMessage(new String[0], R.string.player_stream_failure);
            }
            if (!(th instanceof AccountTerminatedException)) {
                return th instanceof AgeRestrictedContentException ? new ErrorMessage(new String[0], R.string.restricted_video_no_stream) : th instanceof GeographicRestrictionException ? new ErrorMessage(new String[0], R.string.georestricted_content) : th instanceof PaidContentException ? new ErrorMessage(new String[0], R.string.paid_content) : th instanceof PrivateContentException ? new ErrorMessage(new String[0], R.string.private_content) : th instanceof SoundCloudGoPlusContentException ? new ErrorMessage(new String[0], R.string.soundcloud_go_plus_content) : th instanceof UnsupportedContentInCountryException ? new ErrorMessage(new String[0], R.string.unsupported_content_in_country) : th instanceof YoutubeMusicPremiumContentException ? new ErrorMessage(new String[0], R.string.youtube_music_premium_content) : th instanceof SignInConfirmNotBotException ? new ErrorMessage(new String[]{getServiceName(num), "https://newpipe.net/FAQ/#ip-banned-youtube"}, R.string.sign_in_confirm_not_bot_error) : th instanceof ContentNotAvailableException ? new ErrorMessage(new String[0], R.string.content_not_available) : th instanceof ContentNotSupportedException ? new ErrorMessage(new String[0], R.string.content_not_supported) : th instanceof ReCaptchaException ? new ErrorMessage(new String[0], R.string.recaptcha_request_toast) : (th == null || !CharsKt.hasCause(th, true, (Class[]) Arrays.copyOf(new Class[]{IOException.class}, 1))) ? th instanceof ExtractionException ? new ErrorMessage(new String[0], R.string.parsing_error) : userAction == UserAction.UI_ERROR ? new ErrorMessage(new String[0], R.string.app_ui_crash) : userAction == UserAction.REQUESTED_COMMENTS ? new ErrorMessage(new String[0], R.string.error_unable_to_load_comments) : userAction == UserAction.SUBSCRIPTION_CHANGE ? new ErrorMessage(new String[0], R.string.subscription_change_failed) : userAction == UserAction.SUBSCRIPTION_UPDATE ? new ErrorMessage(new String[0], R.string.subscription_update_failed) : userAction == UserAction.LOAD_IMAGE ? new ErrorMessage(new String[0], R.string.could_not_load_thumbnails) : userAction == UserAction.DOWNLOAD_OPEN_DIALOG ? new ErrorMessage(new String[0], R.string.could_not_setup_download_menu) : new ErrorMessage(new String[0], R.string.error_snackbar_message) : new ErrorMessage(new String[0], R.string.network_error);
            }
            String message = ((AccountTerminatedException) th).getMessage();
            if (message != null) {
                if (message.length() == 0) {
                    message = null;
                }
                if (message != null) {
                    ErrorInfo.Companion.getClass();
                    return new ErrorMessage(new String[]{getServiceName(num), message}, R.string.account_terminated_service_provides_reason);
                }
            }
            return new ErrorMessage(new String[0], R.string.account_terminated);
        }

        public static String getServiceName(Integer num) {
            Object obj;
            List list = ServiceList.SERVICES;
            list.getClass();
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                int i = ((StreamingService) obj).serviceId;
                if (num != null && i == num.intValue()) {
                    break;
                }
            }
            StreamingService streamingService = (StreamingService) obj;
            return streamingService != null ? streamingService.serviceInfo.name : "<unknown_service>";
        }

        public static boolean isContentSurelyNotAvailable(ContentNotAvailableException contentNotAvailableException) {
            contentNotAvailableException.getClass();
            return (contentNotAvailableException instanceof AccountTerminatedException) || (contentNotAvailableException instanceof AgeRestrictedContentException) || (contentNotAvailableException instanceof GeographicRestrictionException) || (contentNotAvailableException instanceof PaidContentException) || (contentNotAvailableException instanceof PrivateContentException) || (contentNotAvailableException instanceof SoundCloudGoPlusContentException) || (contentNotAvailableException instanceof UnsupportedContentInCountryException) || (contentNotAvailableException instanceof YoutubeMusicPremiumContentException);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Creator implements Parcelable.Creator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ Creator(int i) {
            this.$r8$classId = i;
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            switch (this.$r8$classId) {
                case 0:
                    parcel.getClass();
                    String[] createStringArray = parcel.createStringArray();
                    UserAction valueOf = UserAction.valueOf(parcel.readString());
                    Integer num = null;
                    String readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        num = Integer.valueOf(parcel.readInt());
                    }
                    return new ErrorInfo(createStringArray, valueOf, readString, num, Companion.ErrorMessage.CREATOR.createFromParcel(parcel), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readString());
                case 1:
                    parcel.getClass();
                    return new Companion.ErrorMessage(parcel.createStringArray(), parcel.readInt());
                case 2:
                    parcel.getClass();
                    return new SubscriptionImportInput.ChannelUrlMode(parcel.readInt(), parcel.readString());
                case 3:
                    parcel.getClass();
                    return new SubscriptionImportInput.InputStreamMode(parcel.readInt(), parcel.readString());
                case 4:
                    parcel.getClass();
                    return new SubscriptionImportInput.PreviousExportMode(parcel.readString());
                case 5:
                    parcel.getClass();
                    return new TimestampChangeData(parcel.readInt(), parcel.readInt(), parcel.readString());
                case 6:
                    parcel.getClass();
                    return new SavedState(parcel.readString(), parcel.readString());
                default:
                    parcel.getClass();
                    return new MissionRecoveryInfo(parcel.readInt() != 0 ? MediaFormat.valueOf(parcel.readString()) : null, parcel.readString(), parcel.readInt() != 0, parcel.readInt(), (char) parcel.readInt(), parcel.readString());
            }
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new ErrorInfo[i];
                case 1:
                    return new Companion.ErrorMessage[i];
                case 2:
                    return new SubscriptionImportInput.ChannelUrlMode[i];
                case 3:
                    return new SubscriptionImportInput.InputStreamMode[i];
                case 4:
                    return new SubscriptionImportInput.PreviousExportMode[i];
                case 5:
                    return new TimestampChangeData[i];
                case 6:
                    return new SavedState[i];
                default:
                    return new MissionRecoveryInfo[i];
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ErrorInfo(java.util.List r13, org.schabi.newpipe.error.UserAction r14, java.lang.String r15, java.lang.Integer r16, java.lang.String r17) {
        /*
            r12 = this;
            r13.getClass()
            r14.getClass()
            r15.getClass()
            org.schabi.newpipe.error.ErrorInfo$Companion r0 = org.schabi.newpipe.error.ErrorInfo.Companion
            r0.getClass()
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 10
            int r1 = kotlin.collections.CollectionsKt__IterablesKt.collectionSizeOrDefault(r13, r1)
            r0.<init>(r1)
            java.util.Iterator r1 = r13.iterator()
        L1d:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L31
            java.lang.Object r2 = r1.next()
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            java.lang.String r2 = kotlin.ResultKt.stackTraceToString(r2)
            r0.add(r2)
            goto L1d
        L31:
            r1 = 0
            java.lang.String[] r2 = new java.lang.String[r1]
            java.lang.Object[] r0 = r0.toArray(r2)
            r3 = r0
            java.lang.String[] r3 = (java.lang.String[]) r3
            org.schabi.newpipe.error.ErrorInfo$Companion r0 = org.schabi.newpipe.error.ErrorInfo.Companion
            java.lang.Object r2 = kotlin.collections.CollectionsKt.firstOrNull(r13)
            java.lang.Throwable r2 = (java.lang.Throwable) r2
            r0.getClass()
            r6 = r16
            org.schabi.newpipe.error.ErrorInfo$Companion$ErrorMessage r7 = org.schabi.newpipe.error.ErrorInfo.Companion.getMessage(r2, r14, r6)
            boolean r0 = r13.isEmpty()
            r2 = 1
            if (r0 == 0) goto L55
        L53:
            r8 = r1
            goto L80
        L55:
            java.util.Iterator r0 = r13.iterator()
        L59:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L53
            java.lang.Object r4 = r0.next()
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            if (r4 != 0) goto L68
            goto L7f
        L68:
            boolean r5 = r4 instanceof org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException
            if (r5 == 0) goto L75
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r4 = (org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException) r4
            boolean r4 = org.schabi.newpipe.error.ErrorInfo.Companion.isContentSurelyNotAvailable(r4)
            if (r4 != 0) goto L59
            goto L7f
        L75:
            boolean r5 = r4 instanceof org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException
            if (r5 == 0) goto L7a
            goto L59
        L7a:
            boolean r4 = r4 instanceof java.net.UnknownHostException
            if (r4 == 0) goto L7f
            goto L59
        L7f:
            r8 = r2
        L80:
            boolean r0 = r13.isEmpty()
            if (r0 != 0) goto Lb6
            org.schabi.newpipe.error.ErrorInfo$Companion r0 = org.schabi.newpipe.error.ErrorInfo.Companion
            boolean r4 = r13.isEmpty()
            if (r4 == 0) goto L8f
            goto Lb4
        L8f:
            java.util.Iterator r4 = r13.iterator()
        L93:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto Lb4
            java.lang.Object r5 = r4.next()
            java.lang.Throwable r5 = (java.lang.Throwable) r5
            r0.getClass()
            boolean r9 = r5 instanceof org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException
            if (r9 == 0) goto Laf
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r5 = (org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException) r5
            boolean r5 = org.schabi.newpipe.error.ErrorInfo.Companion.isContentSurelyNotAvailable(r5)
            if (r5 != 0) goto L93
            goto Lb6
        Laf:
            boolean r5 = r5 instanceof org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException
            if (r5 == 0) goto Lb6
            goto L93
        Lb4:
            r9 = r1
            goto Lb7
        Lb6:
            r9 = r2
        Lb7:
            java.util.Iterator r13 = r13.iterator()
        Lbb:
            boolean r0 = r13.hasNext()
            r1 = 0
            if (r0 == 0) goto Ld3
            java.lang.Object r0 = r13.next()
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            boolean r2 = r0 instanceof org.schabi.newpipe.extractor.exceptions.ReCaptchaException
            if (r2 == 0) goto Lcf
            org.schabi.newpipe.extractor.exceptions.ReCaptchaException r0 = (org.schabi.newpipe.extractor.exceptions.ReCaptchaException) r0
            goto Ld0
        Lcf:
            r0 = r1
        Ld0:
            if (r0 == 0) goto Lbb
            goto Ld4
        Ld3:
            r0 = r1
        Ld4:
            if (r0 == 0) goto Lda
            java.lang.String r1 = r0.getUrl()
        Lda:
            r2 = r12
            r4 = r14
            r5 = r15
            r11 = r17
            r10 = r1
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.error.ErrorInfo.<init>(java.util.List, org.schabi.newpipe.error.UserAction, java.lang.String, java.lang.Integer, java.lang.String):void");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int intValue;
        parcel.getClass();
        parcel.writeStringArray(this.stackTraces);
        parcel.writeString(this.userAction.name());
        parcel.writeString(this.request);
        Integer num = this.serviceId;
        if (num == null) {
            intValue = 0;
        } else {
            parcel.writeInt(1);
            intValue = num.intValue();
        }
        parcel.writeInt(intValue);
        this.message.writeToParcel(parcel, i);
        parcel.writeInt(this.isReportable ? 1 : 0);
        parcel.writeInt(this.isRetryable ? 1 : 0);
        parcel.writeString(this.recaptchaUrl);
        parcel.writeString(this.openInBrowserUrl);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorInfo(Throwable th, UserAction userAction, String str, Integer num) {
        this(th, userAction, str, num, 16);
        th.getClass();
        str.getClass();
    }

    public ErrorInfo(String[] strArr, UserAction userAction, String str, Integer num, Companion.ErrorMessage errorMessage, boolean z, boolean z2, String str2, String str3) {
        this.stackTraces = strArr;
        this.userAction = userAction;
        this.request = str;
        this.serviceId = num;
        this.message = errorMessage;
        this.isReportable = z;
        this.isRetryable = z2;
        this.recaptchaUrl = str2;
        this.openInBrowserUrl = str3;
    }

    public /* synthetic */ ErrorInfo(Throwable th, UserAction userAction, String str, Integer num, int i) {
        this(th, userAction, str, (i & 8) != 0 ? null : num, (String) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ErrorInfo(java.lang.Throwable r12, org.schabi.newpipe.error.UserAction r13, java.lang.String r14, java.lang.Integer r15, java.lang.String r16) {
        /*
            r11 = this;
            r12.getClass()
            r13.getClass()
            r14.getClass()
            org.schabi.newpipe.error.ErrorInfo$Companion r0 = org.schabi.newpipe.error.ErrorInfo.Companion
            r0.getClass()
            java.lang.String r0 = kotlin.ResultKt.stackTraceToString(r12)
            java.lang.String[] r2 = new java.lang.String[]{r0}
            org.schabi.newpipe.error.ErrorInfo$Companion$ErrorMessage r6 = org.schabi.newpipe.error.ErrorInfo.Companion.getMessage(r12, r13, r15)
            boolean r0 = r12 instanceof org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException
            r1 = 0
            r3 = 1
            if (r0 == 0) goto L2a
            r0 = r12
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r0 = (org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException) r0
            boolean r0 = org.schabi.newpipe.error.ErrorInfo.Companion.isContentSurelyNotAvailable(r0)
            if (r0 != 0) goto L33
            goto L35
        L2a:
            boolean r0 = r12 instanceof org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException
            if (r0 == 0) goto L2f
            goto L33
        L2f:
            boolean r0 = r12 instanceof java.net.UnknownHostException
            if (r0 == 0) goto L35
        L33:
            r7 = r1
            goto L36
        L35:
            r7 = r3
        L36:
            boolean r0 = r12 instanceof org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException
            if (r0 == 0) goto L46
            r0 = r12
            org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException r0 = (org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException) r0
            boolean r0 = org.schabi.newpipe.error.ErrorInfo.Companion.isContentSurelyNotAvailable(r0)
            if (r0 != 0) goto L44
            goto L4b
        L44:
            r8 = r1
            goto L4c
        L46:
            boolean r0 = r12 instanceof org.schabi.newpipe.extractor.exceptions.ContentNotSupportedException
            if (r0 == 0) goto L4b
            goto L44
        L4b:
            r8 = r3
        L4c:
            boolean r0 = r12 instanceof org.schabi.newpipe.extractor.exceptions.ReCaptchaException
            r1 = 0
            if (r0 == 0) goto L54
            org.schabi.newpipe.extractor.exceptions.ReCaptchaException r12 = (org.schabi.newpipe.extractor.exceptions.ReCaptchaException) r12
            goto L55
        L54:
            r12 = r1
        L55:
            if (r12 == 0) goto L5b
            java.lang.String r1 = r12.getUrl()
        L5b:
            r3 = r13
            r4 = r14
            r5 = r15
            r10 = r16
            r9 = r1
            r1 = r11
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.error.ErrorInfo.<init>(java.lang.Throwable, org.schabi.newpipe.error.UserAction, java.lang.String, java.lang.Integer, java.lang.String):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorInfo(Throwable th, UserAction userAction, String str) {
        this(th, userAction, str, (Integer) null, 24);
        th.getClass();
    }

    public ErrorInfo(String[] strArr, UserAction userAction, String str, Integer num, int i) {
        this(strArr, userAction, str, num, new Companion.ErrorMessage(new String[0], i), true, false, null, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorInfo(Throwable th, UserAction userAction, String str, Info info) {
        this(th, userAction, str, info != null ? Integer.valueOf(info.getServiceId()) : null, info != null ? info.getUrl() : null);
        th.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorInfo(List list, UserAction userAction, String str, Info info) {
        this(list, userAction, str, info != null ? Integer.valueOf(info.getServiceId()) : null, info != null ? info.getUrl() : null);
        list.getClass();
        str.getClass();
    }
}
