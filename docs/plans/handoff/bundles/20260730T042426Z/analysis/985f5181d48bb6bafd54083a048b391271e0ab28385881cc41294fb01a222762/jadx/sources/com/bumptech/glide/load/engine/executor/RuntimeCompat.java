package com.bumptech.glide.load.engine.executor;

/* loaded from: classes.dex */
abstract class RuntimeCompat {
    static int availableProcessors() {
        return Runtime.getRuntime().availableProcessors();
    }
}
