package com.google.android.exoplayer2.source.dash.manifest;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class ServiceDescriptionElement {
    public final long maxOffsetMs;
    public final float maxPlaybackSpeed;
    public final long minOffsetMs;
    public final float minPlaybackSpeed;
    public final long targetOffsetMs;

    public ServiceDescriptionElement(long j, long j2, long j3, float f, float f2) {
        this.targetOffsetMs = j;
        this.minOffsetMs = j2;
        this.maxOffsetMs = j3;
        this.minPlaybackSpeed = f;
        this.maxPlaybackSpeed = f2;
    }
}
