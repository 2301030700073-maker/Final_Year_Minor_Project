package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import androidx.camera.core.impl.Config;
import androidx.work.OperationKt;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.cache.DiskCacheWriteLocker$WriteLockPool;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.LogTime;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ByteBufferGifDecoder implements ResourceDecoder {
    public static final Option.AnonymousClass1 GIF_DECODER_FACTORY = new Option.AnonymousClass1();
    public static final DiskCacheWriteLocker$WriteLockPool PARSER_POOL = new DiskCacheWriteLocker$WriteLockPool(1);
    public final Context context;
    public final Option.AnonymousClass1 gifDecoderFactory = GIF_DECODER_FACTORY;
    public final DiskCacheWriteLocker$WriteLockPool parserPool = PARSER_POOL;
    public final ArrayList parsers;
    public final Base64Util provider;

    public ByteBufferGifDecoder(Context context, ArrayList arrayList, BitmapPool bitmapPool, LruArrayPool lruArrayPool) {
        this.context = context.getApplicationContext();
        this.parsers = arrayList;
        this.provider = new Base64Util(20, bitmapPool, lruArrayPool);
    }

    public static int getSampleSize(GifHeader gifHeader, int i, int i2) {
        int min = Math.min(gifHeader.height / i2, gifHeader.width / i);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            StringBuilder m91m = Config.CC.m91m("Downsampling GIF, sampleSize: ", max, ", target dimens: [", i, "x");
            m91m.append(i2);
            m91m.append("], actual dimens: [");
            m91m.append(gifHeader.width);
            m91m.append("x");
            m91m.append(gifHeader.height);
            m91m.append("]");
            Log.v("BufferGifDecoder", m91m.toString());
        }
        return max;
    }

    public final GifDrawableResource decode(ByteBuffer byteBuffer, int i, int i2, GifHeaderParser gifHeaderParser, Options options) {
        StringBuilder sb;
        int i3 = LogTime.$r8$clinit;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            GifHeader parseHeader = gifHeaderParser.parseHeader();
            if (parseHeader.frameCount > 0 && parseHeader.status == 0) {
                Bitmap.Config config = options.get(GifOptions.DECODE_FORMAT) == DecodeFormat.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                int sampleSize = getSampleSize(parseHeader, i, i2);
                Option.AnonymousClass1 anonymousClass1 = this.gifDecoderFactory;
                Base64Util base64Util = this.provider;
                anonymousClass1.getClass();
                StandardGifDecoder standardGifDecoder = new StandardGifDecoder(base64Util, parseHeader, byteBuffer, sampleSize);
                standardGifDecoder.setDefaultBitmapConfig(config);
                standardGifDecoder.framePointer = (standardGifDecoder.framePointer + 1) % standardGifDecoder.header.frameCount;
                Bitmap nextFrame = standardGifDecoder.getNextFrame();
                if (nextFrame == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        sb = new StringBuilder("Decoded GIF from stream in ");
                        sb.append(LogTime.getElapsedMillis(elapsedRealtimeNanos));
                        Log.v("BufferGifDecoder", sb.toString());
                        return null;
                    }
                    return null;
                }
                GifDrawableResource gifDrawableResource = new GifDrawableResource(new GifDrawable(new GifDrawable.GifState(0, new GifFrameLoader(Glide.get(this.context), standardGifDecoder, i, i2, nextFrame))), 0);
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + LogTime.getElapsedMillis(elapsedRealtimeNanos));
                }
                return gifDrawableResource;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(LogTime.getElapsedMillis(elapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return null;
            }
            return null;
        } finally {
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean handles(Object obj, Options options) {
        return !((Boolean) options.get(GifOptions.DISABLE_ANIMATION)).booleanValue() && OperationKt.getType(this.parsers, (ByteBuffer) obj) == ImageHeaderParser.ImageType.GIF;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource decode(Object obj, int i, int i2, Options options) {
        GifHeaderParser gifHeaderParser;
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        DiskCacheWriteLocker$WriteLockPool diskCacheWriteLocker$WriteLockPool = this.parserPool;
        synchronized (diskCacheWriteLocker$WriteLockPool) {
            try {
                GifHeaderParser gifHeaderParser2 = (GifHeaderParser) diskCacheWriteLocker$WriteLockPool.pool.poll();
                if (gifHeaderParser2 == null) {
                    gifHeaderParser2 = new GifHeaderParser();
                }
                gifHeaderParser = gifHeaderParser2;
                gifHeaderParser.rawData = null;
                Arrays.fill(gifHeaderParser.block, (byte) 0);
                gifHeaderParser.header = new GifHeader();
                gifHeaderParser.blockSize = 0;
                ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                gifHeaderParser.rawData = asReadOnlyBuffer;
                asReadOnlyBuffer.position(0);
                gifHeaderParser.rawData.order(ByteOrder.LITTLE_ENDIAN);
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            return decode(byteBuffer, i, i2, gifHeaderParser, options);
        } finally {
            this.parserPool.release(gifHeaderParser);
        }
    }
}
