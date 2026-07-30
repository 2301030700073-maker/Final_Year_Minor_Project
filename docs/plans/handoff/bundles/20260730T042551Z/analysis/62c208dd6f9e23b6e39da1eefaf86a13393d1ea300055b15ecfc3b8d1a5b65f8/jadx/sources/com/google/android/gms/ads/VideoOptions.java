package com.google.android.gms.ads;

import com.google.android.gms.ads.internal.client.zzga;

/* loaded from: classes.dex */
public final class VideoOptions {

    /* renamed from: do, reason: not valid java name */
    public final boolean f9534do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f9535for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f9536if;

    public static final class Builder {

        /* renamed from: do, reason: not valid java name */
        public boolean f9537do = true;

        /* renamed from: if, reason: not valid java name */
        public boolean f9539if = false;

        /* renamed from: for, reason: not valid java name */
        public boolean f9538for = false;

        public VideoOptions build() {
            return new VideoOptions(this);
        }

        public Builder setClickToExpandRequested(boolean z) {
            this.f9538for = z;
            return this;
        }

        public Builder setCustomControlsRequested(boolean z) {
            this.f9539if = z;
            return this;
        }

        public Builder setStartMuted(boolean z) {
            this.f9537do = z;
            return this;
        }
    }

    public /* synthetic */ VideoOptions(Builder builder) {
        this.f9534do = builder.f9537do;
        this.f9536if = builder.f9539if;
        this.f9535for = builder.f9538for;
    }

    public VideoOptions(zzga zzgaVar) {
        this.f9534do = zzgaVar.zza;
        this.f9536if = zzgaVar.zzb;
        this.f9535for = zzgaVar.zzc;
    }

    public boolean getClickToExpandRequested() {
        return this.f9535for;
    }

    public boolean getCustomControlsRequested() {
        return this.f9536if;
    }

    public boolean getStartMuted() {
        return this.f9534do;
    }
}
