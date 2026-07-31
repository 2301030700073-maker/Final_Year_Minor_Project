package com.fsck.k9.contacts;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import app.k9mail.core.android.common.contact.CachingContactRepository;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.DrawableToBitmapConverter;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawableResource;
import com.bumptech.glide.util.ExceptionPassthroughInputStream;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mail.Address;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Locale;
import kotlin.io.CloseableKt;
import kotlin.text.MatcherMatchResult;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContactImageBitmapDecoder implements ResourceDecoder {
    public final /* synthetic */ int $r8$classId;
    public final Object bitmapPool;
    public final Object contactPhotoLoader;

    public ContactImageBitmapDecoder(ContactPhotoLoader contactPhotoLoader, BitmapPool bitmapPool) {
        this.$r8$classId = 0;
        bitmapPool.getClass();
        this.contactPhotoLoader = contactPhotoLoader;
        this.bitmapPool = bitmapPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource decode(Object obj, int i, int i2, Options options) {
        String str;
        RecyclableBufferedInputStream recyclableBufferedInputStream;
        ExceptionPassthroughInputStream exceptionPassthroughInputStream;
        boolean z = true;
        Bitmap bitmap = null;
        switch (this.$r8$classId) {
            case 0:
                ContactImage contactImage = (ContactImage) obj;
                BitmapPool bitmapPool = (BitmapPool) this.bitmapPool;
                contactImage.getClass();
                Address address = contactImage.address;
                options.getClass();
                int max = Math.max(i, i2);
                if (!contactImage.contactLetterOnly) {
                    ContactPhotoLoader contactPhotoLoader = (ContactPhotoLoader) this.contactPhotoLoader;
                    String str2 = address.address;
                    str2.getClass();
                    Uri photoUri = ((CachingContactRepository) contactPhotoLoader.contactRepository).getPhotoUri(str2);
                    if (photoUri != null) {
                        try {
                            InputStream openInputStream = contactPhotoLoader.contentResolver.openInputStream(photoUri);
                            try {
                                Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream);
                                CloseableKt.closeFinally(openInputStream, null);
                                bitmap = decodeStream;
                            } finally {
                            }
                        } catch (Exception e) {
                            Log.e(e, "Couldn't load contact photo: " + photoUri, new Object[0]);
                        }
                    }
                }
                if (bitmap == null) {
                    bitmap = bitmapPool.getDirty(max, max, Bitmap.Config.ARGB_8888);
                    bitmap.getClass();
                    ContactLetterBitmapCreator contactLetterBitmapCreator = contactImage.contactLetterBitmapCreator;
                    address.getClass();
                    Canvas canvas = new Canvas(bitmap);
                    bitmap.eraseColor(contactLetterBitmapCreator.calcUnknownContactColor(address));
                    String str3 = address.personal;
                    if (str3 == null) {
                        str3 = address.address;
                    }
                    MatcherMatchResult find = ContactLetterExtractor.EXTRACT_LETTER_PATTERN.find(0, str3);
                    if (find != null) {
                        String group = find.matcher.group();
                        group.getClass();
                        str = group.toUpperCase(Locale.ROOT);
                        str.getClass();
                    } else {
                        str = "?";
                    }
                    Paint paint = new Paint();
                    paint.setAntiAlias(true);
                    paint.setStyle(Paint.Style.FILL);
                    paint.setARGB(255, 255, 255, 255);
                    float f = max;
                    paint.setTextSize(0.65f * f);
                    paint.getTextBounds(str, 0, 1, new Rect());
                    float f2 = f / 2.0f;
                    canvas.drawText(str, f2 - (paint.measureText(str) / 2.0f), (r0.height() / 2.0f) + f2, paint);
                }
                return BitmapResource.obtain(bitmap, bitmapPool);
            case 1:
                Resource decode = ((ResourceDecoder) this.contactPhotoLoader).decode(obj, i, i2, options);
                Resources resources = (Resources) this.bitmapPool;
                if (decode == null) {
                    return null;
                }
                return new BitmapResource(resources, decode);
            case 2:
                Resource decode2 = ((ResourceDrawableDecoder) this.contactPhotoLoader).decode((Uri) obj, options);
                if (decode2 == null) {
                    return null;
                }
                return DrawableToBitmapConverter.convert((BitmapPool) this.bitmapPool, (Drawable) ((GifDrawableResource) decode2).get(), i, i2);
            default:
                InputStream inputStream = (InputStream) obj;
                if (inputStream instanceof RecyclableBufferedInputStream) {
                    recyclableBufferedInputStream = (RecyclableBufferedInputStream) inputStream;
                    z = false;
                } else {
                    recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, (LruArrayPool) this.bitmapPool);
                }
                ArrayDeque arrayDeque = ExceptionPassthroughInputStream.POOL;
                synchronized (arrayDeque) {
                    exceptionPassthroughInputStream = (ExceptionPassthroughInputStream) arrayDeque.poll();
                }
                if (exceptionPassthroughInputStream == null) {
                    exceptionPassthroughInputStream = new ExceptionPassthroughInputStream();
                }
                ExceptionPassthroughInputStream exceptionPassthroughInputStream2 = exceptionPassthroughInputStream;
                exceptionPassthroughInputStream2.wrapped = recyclableBufferedInputStream;
                MarkEnforcingInputStream markEnforcingInputStream = new MarkEnforcingInputStream(exceptionPassthroughInputStream2);
                Base64Util base64Util = new Base64Util(19, recyclableBufferedInputStream, exceptionPassthroughInputStream2);
                try {
                    Downsampler downsampler = (Downsampler) this.contactPhotoLoader;
                    BitmapResource decode3 = downsampler.decode(new ImapSync(markEnforcingInputStream, downsampler.parsers, downsampler.byteArrayPool), i, i2, options, base64Util);
                    exceptionPassthroughInputStream2.release();
                    if (z) {
                        recyclableBufferedInputStream.release();
                    }
                    return decode3;
                } finally {
                }
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean handles(Object obj, Options options) {
        switch (this.$r8$classId) {
            case 0:
                ((ContactImage) obj).getClass();
                options.getClass();
                return true;
            case 1:
                return ((ResourceDecoder) this.contactPhotoLoader).handles(obj, options);
            case 2:
                return "android.resource".equals(((Uri) obj).getScheme());
            default:
                return true;
        }
    }

    public /* synthetic */ ContactImageBitmapDecoder(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.contactPhotoLoader = obj;
        this.bitmapPool = obj2;
    }

    public ContactImageBitmapDecoder(Resources resources, ResourceDecoder resourceDecoder) {
        this.$r8$classId = 1;
        this.bitmapPool = resources;
        this.contactPhotoLoader = resourceDecoder;
    }
}
