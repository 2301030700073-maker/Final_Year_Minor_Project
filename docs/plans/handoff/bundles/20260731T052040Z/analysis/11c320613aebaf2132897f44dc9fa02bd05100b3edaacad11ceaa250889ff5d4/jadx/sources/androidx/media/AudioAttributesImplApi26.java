package androidx.media;

import android.media.AudioAttributes;
import coil3.memory.MemoryCacheService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder extends MemoryCacheService {
        @Override // coil3.memory.MemoryCacheService
        public final AudioAttributesImpl build() {
            return new AudioAttributesImplApi26(((AudioAttributes.Builder) this.imageLoader).build());
        }

        @Override // coil3.memory.MemoryCacheService
        public final MemoryCacheService setUsage() {
            ((AudioAttributes.Builder) this.imageLoader).setUsage(1);
            return this;
        }

        @Override // coil3.memory.MemoryCacheService
        public final MemoryCacheService setUsage$1() {
            ((AudioAttributes.Builder) this.imageLoader).setUsage(1);
            return this;
        }
    }
}
