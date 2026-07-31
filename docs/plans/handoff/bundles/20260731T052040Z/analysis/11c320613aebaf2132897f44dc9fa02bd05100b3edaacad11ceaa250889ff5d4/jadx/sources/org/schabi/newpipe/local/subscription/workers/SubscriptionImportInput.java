package org.schabi.newpipe.local.subscription.workers;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.ui.Modifier;
import androidx.work.Data;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.error.ErrorInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SubscriptionImportInput implements Parcelable {
    public static final Companion Companion = new Companion();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ChannelUrlMode extends SubscriptionImportInput {
        public static final Parcelable.Creator<ChannelUrlMode> CREATOR = new ErrorInfo.Creator(2);
        public final int serviceId;
        public final String url;

        public ChannelUrlMode(int i, String str) {
            str.getClass();
            this.serviceId = i;
            this.url = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ChannelUrlMode)) {
                return false;
            }
            ChannelUrlMode channelUrlMode = (ChannelUrlMode) obj;
            return this.serviceId == channelUrlMode.serviceId && Intrinsics.areEqual(this.url, channelUrlMode.url);
        }

        public final int hashCode() {
            return this.url.hashCode() + (this.serviceId * 31);
        }

        public final String toString() {
            return "ChannelUrlMode(serviceId=" + this.serviceId + ", url=" + this.url + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.serviceId);
            parcel.writeString(this.url);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static SubscriptionImportInput fromData(Data data) {
            data.getClass();
            int i = data.getInt(2, "mode");
            if (i == 0) {
                int i2 = data.getInt(-1, "service_id");
                if (i2 == -1) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("No service id provided");
                    return null;
                }
                String string = data.getString("url");
                string.getClass();
                return new ChannelUrlMode(i2, string);
            }
            if (i != 1) {
                if (i != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "Unknown mode: "));
                    return null;
                }
                String string2 = data.getString("url");
                string2.getClass();
                return new PreviousExportMode(string2);
            }
            int i3 = data.getInt(-1, "service_id");
            if (i3 == -1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("No service id provided");
                return null;
            }
            String string3 = data.getString("url");
            string3.getClass();
            return new InputStreamMode(i3, string3);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class InputStreamMode extends SubscriptionImportInput {
        public static final Parcelable.Creator<InputStreamMode> CREATOR = new ErrorInfo.Creator(3);
        public final int serviceId;
        public final String url;

        public InputStreamMode(int i, String str) {
            str.getClass();
            this.serviceId = i;
            this.url = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof InputStreamMode)) {
                return false;
            }
            InputStreamMode inputStreamMode = (InputStreamMode) obj;
            return this.serviceId == inputStreamMode.serviceId && Intrinsics.areEqual(this.url, inputStreamMode.url);
        }

        public final int hashCode() {
            return this.url.hashCode() + (this.serviceId * 31);
        }

        public final String toString() {
            return "InputStreamMode(serviceId=" + this.serviceId + ", url=" + this.url + ")";
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.serviceId);
            parcel.writeString(this.url);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PreviousExportMode extends SubscriptionImportInput {
        public static final Parcelable.Creator<PreviousExportMode> CREATOR = new ErrorInfo.Creator(4);
        public final String url;

        public PreviousExportMode(String str) {
            str.getClass();
            this.url = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PreviousExportMode) && Intrinsics.areEqual(this.url, ((PreviousExportMode) obj).url);
        }

        public final int hashCode() {
            return this.url.hashCode();
        }

        public final String toString() {
            return Modifier.CC.m("PreviousExportMode(url=", this.url, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeString(this.url);
        }
    }
}
