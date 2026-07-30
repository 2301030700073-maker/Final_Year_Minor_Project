package com.android.launcher3.logging;

import com.android.systemui.shared.tracing.FrameProtoTracer;
import java.security.SecureRandom;
import java.util.Random;

/* loaded from: classes.dex */
public class InstanceIdSequence {
    public final int mInstanceIdMax;
    public final Random mRandom;

    public InstanceIdSequence(int i) {
        this.mRandom = new SecureRandom();
        this.mInstanceIdMax = Math.min(Math.max(1, i), FrameProtoTracer.BUFFER_CAPACITY);
    }

    public InstanceId newInstanceId() {
        return newInstanceIdInternal(this.mRandom.nextInt(this.mInstanceIdMax) + 1);
    }

    public InstanceId newInstanceIdInternal(int i) {
        return new InstanceId(i);
    }

    public InstanceIdSequence() {
        this(FrameProtoTracer.BUFFER_CAPACITY);
    }
}
