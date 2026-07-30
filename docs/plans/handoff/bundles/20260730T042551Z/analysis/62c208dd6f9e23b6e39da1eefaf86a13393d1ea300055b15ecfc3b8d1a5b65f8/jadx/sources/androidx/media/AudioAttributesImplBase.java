package androidx.media;

import defpackage.V1;
import java.util.Arrays;

/* loaded from: classes.dex */
class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: do, reason: not valid java name */
    public int f7159do = 0;

    /* renamed from: if, reason: not valid java name */
    public int f7161if = 0;

    /* renamed from: for, reason: not valid java name */
    public int f7160for = 0;

    /* renamed from: new, reason: not valid java name */
    public int f7162new = -1;

    public final boolean equals(Object obj) {
        int i;
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        if (this.f7161if != audioAttributesImplBase.f7161if) {
            return false;
        }
        int i2 = this.f7160for;
        int i3 = audioAttributesImplBase.f7160for;
        int i4 = audioAttributesImplBase.f7162new;
        if (i4 == -1) {
            int i5 = audioAttributesImplBase.f7159do;
            int i6 = AudioAttributesCompat.f7155do;
            if ((i3 & 1) != 1) {
                i = 4;
                if ((i3 & 4) != 4) {
                    switch (i5) {
                        case 2:
                            i = 0;
                            break;
                        case 3:
                            i = 8;
                            break;
                        case 4:
                            break;
                        case 5:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                            i = 5;
                            break;
                        case 6:
                            i = 2;
                            break;
                        case 11:
                            i = 10;
                            break;
                        case 12:
                        default:
                            i = 3;
                            break;
                        case 13:
                            i = 1;
                            break;
                    }
                } else {
                    i = 6;
                }
            } else {
                i = 7;
            }
        } else {
            i = i4;
        }
        if (i == 6) {
            i3 |= 4;
        } else if (i == 7) {
            i3 |= 1;
        }
        return i2 == (i3 & 273) && this.f7159do == audioAttributesImplBase.f7159do && this.f7162new == i4;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f7161if), Integer.valueOf(this.f7160for), Integer.valueOf(this.f7159do), Integer.valueOf(this.f7162new)});
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f7162new != -1) {
            sb.append(" stream=");
            sb.append(this.f7162new);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i = this.f7159do;
        int i2 = AudioAttributesCompat.f7155do;
        switch (i) {
            case 0:
                str = "USAGE_UNKNOWN";
                break;
            case 1:
                str = "USAGE_MEDIA";
                break;
            case 2:
                str = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                str = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                str = "USAGE_ALARM";
                break;
            case 5:
                str = "USAGE_NOTIFICATION";
                break;
            case 6:
                str = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                str = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                str = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                str = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                str = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                str = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                str = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                str = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                str = "USAGE_GAME";
                break;
            case 15:
            default:
                str = V1.m2494case("unknown usage ", i);
                break;
            case 16:
                str = "USAGE_ASSISTANT";
                break;
        }
        sb.append(str);
        sb.append(" content=");
        sb.append(this.f7161if);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f7160for).toUpperCase());
        return sb.toString();
    }
}
