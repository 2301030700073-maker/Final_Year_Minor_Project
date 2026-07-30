package com.android.contacts;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.provider.ContactsContract;
import android.util.Log;
import android.util.LruCache;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.graphics.drawable.RoundedBitmapDrawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory;
import com.android.contacts.ContactPhotoManager;
import com.android.contacts.util.BitmapUtil;
import com.android.contacts.util.PermissionsUtil;
import com.android.contacts.util.UriUtils;
import com.android.contactsbind.util.UserAgentGenerator;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ContactPhotoManager.java */
/* loaded from: classes.dex */
class ContactPhotoManagerImpl extends ContactPhotoManager implements Handler.Callback {
    private static final BitmapHolder BITMAP_UNAVAILABLE;
    private static int mThumbnailSize;
    private final LruCache<Object, Bitmap> mBitmapCache;
    private final LruCache<Object, BitmapHolder> mBitmapHolderCache;
    private final int mBitmapHolderCacheRedZoneBytes;
    private final Context mContext;
    private LoaderThread mLoaderThread;
    private boolean mLoadingRequested;
    private boolean mPaused;
    private String mUserAgent;
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final String[] COLUMNS = {"_id", "data15"};
    private volatile boolean mBitmapHolderCacheAllUnfresh = true;
    private final ConcurrentHashMap<ImageView, Request> mPendingRequests = new ConcurrentHashMap<>();
    private final Handler mMainThreadHandler = new Handler(this);

    static {
        BitmapHolder bitmapHolder = new BitmapHolder(new byte[0], 0);
        BITMAP_UNAVAILABLE = bitmapHolder;
        bitmapHolder.bitmapRef = new SoftReference(null);
    }

    /* compiled from: ContactPhotoManager.java */
    private static class BitmapHolder {
        Bitmap bitmap;
        Reference<Bitmap> bitmapRef;
        final byte[] bytes;
        int decodedSampleSize;
        volatile boolean fresh = true;
        final int originalSmallerExtent;

        public BitmapHolder(byte[] bArr, int i) {
            this.bytes = bArr;
            this.originalSmallerExtent = i;
        }
    }

    public ContactPhotoManagerImpl(Context context) {
        new AtomicInteger();
        new AtomicInteger();
        this.mContext = context;
        float f = ((ActivityManager) context.getSystemService("activity")).isLowRamDevice() ? 0.5f : 1.0f;
        this.mBitmapCache = new LruCache<Object, Bitmap>(this, (int) (1769472.0f * f)) { // from class: com.android.contacts.ContactPhotoManagerImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public void entryRemoved(boolean z, Object obj, Bitmap bitmap, Bitmap bitmap2) {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public int sizeOf(Object obj, Bitmap bitmap) {
                return bitmap.getByteCount();
            }
        };
        int i = (int) (2000000.0f * f);
        this.mBitmapHolderCache = new LruCache<Object, BitmapHolder>(this, i) { // from class: com.android.contacts.ContactPhotoManagerImpl.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public void entryRemoved(boolean z, Object obj, BitmapHolder bitmapHolder, BitmapHolder bitmapHolder2) {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public int sizeOf(Object obj, BitmapHolder bitmapHolder) {
                byte[] bArr = bitmapHolder.bytes;
                if (bArr != null) {
                    return bArr.length;
                }
                return 0;
            }
        };
        this.mBitmapHolderCacheRedZoneBytes = (int) (i * 0.75d);
        Log.i("ContactPhotoManager", "Cache adj: " + f);
        mThumbnailSize = context.getResources().getDimensionPixelSize(R.dimen.contact_browser_list_item_photo_size);
        String userAgent = UserAgentGenerator.getUserAgent(context);
        this.mUserAgent = userAgent;
        if (userAgent == null) {
            this.mUserAgent = "";
        }
    }

    @Override // com.android.contacts.ContactPhotoManager, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i >= 60) {
            clear();
        }
    }

    @Override // com.android.contacts.ContactPhotoManager
    public void preloadPhotosInBackground() {
        ensureLoaderThread();
        this.mLoaderThread.requestPreloading();
    }

    @Override // com.android.contacts.ContactPhotoManager
    public void loadThumbnail(ImageView imageView, long j, boolean z, boolean z2, ContactPhotoManager.DefaultImageRequest defaultImageRequest, ContactPhotoManager.DefaultImageProvider defaultImageProvider) {
        if (j == 0) {
            defaultImageProvider.applyDefaultImage(imageView, -1, z, defaultImageRequest);
            this.mPendingRequests.remove(imageView);
        } else {
            loadPhotoByIdOrUri(imageView, Request.createFromThumbnailId(j, z, z2, defaultImageProvider, defaultImageRequest));
        }
    }

    @Override // com.android.contacts.ContactPhotoManager
    public void loadPhoto(ImageView imageView, Uri uri, int i, boolean z, boolean z2, ContactPhotoManager.DefaultImageRequest defaultImageRequest, ContactPhotoManager.DefaultImageProvider defaultImageProvider) {
        if (uri == null) {
            defaultImageProvider.applyDefaultImage(imageView, i, z, defaultImageRequest);
            this.mPendingRequests.remove(imageView);
        } else if (isDefaultImageUri(uri)) {
            createAndApplyDefaultImageForUri(imageView, uri, i, z, z2, defaultImageProvider);
        } else {
            loadPhotoByIdOrUri(imageView, Request.createFromUri(uri, i, z, z2, defaultImageProvider, defaultImageRequest));
        }
    }

    private void createAndApplyDefaultImageForUri(ImageView imageView, Uri uri, int i, boolean z, boolean z2, ContactPhotoManager.DefaultImageProvider defaultImageProvider) {
        ContactPhotoManager.DefaultImageRequest defaultImageRequestFromUri = ContactPhotoManager.getDefaultImageRequestFromUri(uri);
        defaultImageRequestFromUri.isCircular = z2;
        defaultImageProvider.applyDefaultImage(imageView, i, z, defaultImageRequestFromUri);
    }

    private void loadPhotoByIdOrUri(ImageView imageView, Request request) {
        if (loadCachedPhoto(imageView, request, false)) {
            this.mPendingRequests.remove(imageView);
            return;
        }
        this.mPendingRequests.put(imageView, request);
        if (this.mPaused) {
            return;
        }
        requestLoading();
    }

    @Override // com.android.contacts.ContactPhotoManager
    public void removePhoto(ImageView imageView) {
        imageView.setImageDrawable(null);
        this.mPendingRequests.remove(imageView);
    }

    @Override // com.android.contacts.ContactPhotoManager
    public void cancelPendingRequests(View view) {
        if (view == null) {
            this.mPendingRequests.clear();
            return;
        }
        Iterator<Map.Entry<ImageView, Request>> it = this.mPendingRequests.entrySet().iterator();
        while (it.hasNext()) {
            ImageView key = it.next().getKey();
            if (key.getParent() == null || isChildView(view, key)) {
                it.remove();
            }
        }
    }

    private static boolean isChildView(View view, View view2) {
        return view2.getParent() != null && (view2.getParent() == view || ((view2.getParent() instanceof ViewGroup) && isChildView(view, (ViewGroup) view2.getParent())));
    }

    @Override // com.android.contacts.ContactPhotoManager
    public void refreshCache() {
        if (this.mBitmapHolderCacheAllUnfresh) {
            return;
        }
        this.mBitmapHolderCacheAllUnfresh = true;
        for (BitmapHolder bitmapHolder : this.mBitmapHolderCache.snapshot().values()) {
            if (bitmapHolder != BITMAP_UNAVAILABLE) {
                bitmapHolder.fresh = false;
            }
        }
    }

    private boolean loadCachedPhoto(ImageView imageView, Request request, boolean z) {
        BitmapHolder bitmapHolder = this.mBitmapHolderCache.get(request.getKey());
        if (bitmapHolder != null) {
            byte[] bArr = bitmapHolder.bytes;
            if (bArr != null && bArr.length != 0) {
                Reference<Bitmap> reference = bitmapHolder.bitmapRef;
                Bitmap bitmap = reference == null ? null : reference.get();
                if (bitmap == null) {
                    if (bitmapHolder.bytes.length < 8192) {
                        inflateBitmap(bitmapHolder, request.getRequestedExtent());
                        bitmap = bitmapHolder.bitmap;
                        if (bitmap == null) {
                            return false;
                        }
                    } else {
                        request.applyDefaultImage(imageView, request.mIsCircular);
                        return false;
                    }
                }
                Drawable drawable = imageView.getDrawable();
                if (z && drawable != null) {
                    Drawable[] drawableArr = new Drawable[2];
                    if (drawable instanceof TransitionDrawable) {
                        TransitionDrawable transitionDrawable = (TransitionDrawable) drawable;
                        drawableArr[0] = transitionDrawable.getDrawable(transitionDrawable.getNumberOfLayers() - 1);
                    } else {
                        drawableArr[0] = drawable;
                    }
                    drawableArr[1] = getDrawableForBitmap(this.mContext.getResources(), bitmap, request);
                    TransitionDrawable transitionDrawable2 = new TransitionDrawable(drawableArr);
                    imageView.setImageDrawable(transitionDrawable2);
                    transitionDrawable2.startTransition(200);
                } else {
                    imageView.setImageDrawable(getDrawableForBitmap(this.mContext.getResources(), bitmap, request));
                }
                if (bitmap.getByteCount() < this.mBitmapCache.maxSize() / 6) {
                    this.mBitmapCache.put(request.getKey(), bitmap);
                }
                bitmapHolder.bitmap = null;
                return bitmapHolder.fresh;
            }
            request.applyDefaultImage(imageView, request.mIsCircular);
            return bitmapHolder.fresh;
        }
        request.applyDefaultImage(imageView, request.mIsCircular);
        return false;
    }

    private Drawable getDrawableForBitmap(Resources resources, Bitmap bitmap, Request request) {
        if (request.mIsCircular) {
            RoundedBitmapDrawable create = RoundedBitmapDrawableFactory.create(resources, bitmap);
            create.setAntiAlias(true);
            create.setCornerRadius(bitmap.getHeight() / 2);
            return create;
        }
        return new BitmapDrawable(resources, bitmap);
    }

    private static void inflateBitmap(BitmapHolder bitmapHolder, int i) {
        Reference<Bitmap> reference;
        int findOptimalSampleSize = BitmapUtil.findOptimalSampleSize(bitmapHolder.originalSmallerExtent, i);
        byte[] bArr = bitmapHolder.bytes;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        if (findOptimalSampleSize == bitmapHolder.decodedSampleSize && (reference = bitmapHolder.bitmapRef) != null) {
            Bitmap bitmap = reference.get();
            bitmapHolder.bitmap = bitmap;
            if (bitmap != null) {
                return;
            }
        }
        try {
            Bitmap decodeBitmapFromBytes = BitmapUtil.decodeBitmapFromBytes(bArr, findOptimalSampleSize);
            int height = decodeBitmapFromBytes.getHeight();
            int width = decodeBitmapFromBytes.getWidth();
            if (height != width && Math.min(height, width) <= mThumbnailSize * 2) {
                int min = Math.min(height, width);
                decodeBitmapFromBytes = ThumbnailUtils.extractThumbnail(decodeBitmapFromBytes, min, min);
            }
            bitmapHolder.decodedSampleSize = findOptimalSampleSize;
            bitmapHolder.bitmap = decodeBitmapFromBytes;
            bitmapHolder.bitmapRef = new SoftReference(decodeBitmapFromBytes);
        } catch (OutOfMemoryError unused) {
        }
    }

    public void clear() {
        this.mPendingRequests.clear();
        this.mBitmapHolderCache.evictAll();
        this.mBitmapCache.evictAll();
    }

    @Override // com.android.contacts.ContactPhotoManager
    public void pause() {
        this.mPaused = true;
    }

    @Override // com.android.contacts.ContactPhotoManager
    public void resume() {
        this.mPaused = false;
        if (this.mPendingRequests.isEmpty()) {
            return;
        }
        requestLoading();
    }

    private void requestLoading() {
        if (this.mLoadingRequested) {
            return;
        }
        this.mLoadingRequested = true;
        this.mMainThreadHandler.sendEmptyMessage(1);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            if (!this.mPaused) {
                processLoadedImages();
            }
            return true;
        }
        this.mLoadingRequested = false;
        if (!this.mPaused) {
            ensureLoaderThread();
            this.mLoaderThread.requestLoading();
        }
        return true;
    }

    public void ensureLoaderThread() {
        if (this.mLoaderThread == null) {
            LoaderThread loaderThread = new LoaderThread(this.mContext.getContentResolver());
            this.mLoaderThread = loaderThread;
            loaderThread.start();
        }
    }

    private void processLoadedImages() {
        Iterator<Map.Entry<ImageView, Request>> it = this.mPendingRequests.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<ImageView, Request> next = it.next();
            if (loadCachedPhoto(next.getKey(), next.getValue(), false)) {
                it.remove();
            }
        }
        softenCache();
        if (this.mPendingRequests.isEmpty()) {
            return;
        }
        requestLoading();
    }

    private void softenCache() {
        Iterator<BitmapHolder> it = this.mBitmapHolderCache.snapshot().values().iterator();
        while (it.hasNext()) {
            it.next().bitmap = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheBitmap(Object obj, byte[] bArr, boolean z, int i) {
        BitmapHolder bitmapHolder = BITMAP_UNAVAILABLE;
        BitmapHolder bitmapHolder2 = new BitmapHolder(bArr, bArr == null ? -1 : BitmapUtil.getSmallerExtentFromBytes(bArr));
        if (!z) {
            inflateBitmap(bitmapHolder2, i);
        }
        if (bArr != null) {
            this.mBitmapHolderCache.put(obj, bitmapHolder2);
            if (this.mBitmapHolderCache.get(obj) != bitmapHolder2) {
                Log.w("ContactPhotoManager", "Bitmap too big to fit in cache.");
                this.mBitmapHolderCache.put(obj, bitmapHolder);
            }
        } else {
            this.mBitmapHolderCache.put(obj, bitmapHolder);
        }
        this.mBitmapHolderCacheAllUnfresh = false;
    }

    @Override // com.android.contacts.ContactPhotoManager
    public void cacheBitmap(Uri uri, Bitmap bitmap, byte[] bArr) {
        int min = Math.min(bitmap.getWidth(), bitmap.getHeight());
        Request createFromUri = Request.createFromUri(uri, min, false, false, ContactPhotoManager.DEFAULT_AVATAR);
        BitmapHolder bitmapHolder = new BitmapHolder(bArr, min);
        bitmapHolder.bitmapRef = new SoftReference(bitmap);
        this.mBitmapHolderCache.put(createFromUri.getKey(), bitmapHolder);
        this.mBitmapHolderCacheAllUnfresh = false;
        this.mBitmapCache.put(createFromUri.getKey(), bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
    
        if (r3.fresh != false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void obtainPhotoIdsAndUrisToLoad(java.util.Set<java.lang.Long> r6, java.util.Set<java.lang.String> r7, java.util.Set<com.android.contacts.ContactPhotoManagerImpl.Request> r8) {
        /*
            r5 = this;
            r6.clear()
            r7.clear()
            r8.clear()
            java.util.concurrent.ConcurrentHashMap<android.widget.ImageView, com.android.contacts.ContactPhotoManagerImpl$Request> r0 = r5.mPendingRequests
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
        L14:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L75
            java.lang.Object r2 = r0.next()
            com.android.contacts.ContactPhotoManagerImpl$Request r2 = (com.android.contacts.ContactPhotoManagerImpl.Request) r2
            android.util.LruCache<java.lang.Object, com.android.contacts.ContactPhotoManagerImpl$BitmapHolder> r3 = r5.mBitmapHolderCache
            java.lang.Object r4 = r2.getKey()
            java.lang.Object r3 = r3.get(r4)
            com.android.contacts.ContactPhotoManagerImpl$BitmapHolder r3 = (com.android.contacts.ContactPhotoManagerImpl.BitmapHolder) r3
            com.android.contacts.ContactPhotoManagerImpl$BitmapHolder r4 = com.android.contacts.ContactPhotoManagerImpl.BITMAP_UNAVAILABLE
            if (r3 != r4) goto L31
            goto L14
        L31:
            if (r3 == 0) goto L4e
            byte[] r4 = r3.bytes
            if (r4 == 0) goto L4e
            boolean r4 = r3.fresh
            if (r4 == 0) goto L4e
            java.lang.ref.Reference<android.graphics.Bitmap> r4 = r3.bitmapRef
            if (r4 == 0) goto L45
            java.lang.Object r4 = r4.get()
            if (r4 != 0) goto L4e
        L45:
            int r1 = r2.getRequestedExtent()
            inflateBitmap(r3, r1)
            r1 = 1
            goto L14
        L4e:
            if (r3 == 0) goto L54
            boolean r3 = r3.fresh
            if (r3 != 0) goto L14
        L54:
            boolean r3 = r2.isUriRequest()
            if (r3 == 0) goto L5e
            r8.add(r2)
            goto L14
        L5e:
            long r3 = r2.getId()
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            r6.add(r3)
            long r2 = com.android.contacts.ContactPhotoManagerImpl.Request.access$100(r2)
            java.lang.String r2 = java.lang.String.valueOf(r2)
            r7.add(r2)
            goto L14
        L75:
            if (r1 == 0) goto L7d
            android.os.Handler r6 = r5.mMainThreadHandler
            r7 = 2
            r6.sendEmptyMessage(r7)
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactPhotoManagerImpl.obtainPhotoIdsAndUrisToLoad(java.util.Set, java.util.Set, java.util.Set):void");
    }

    /* compiled from: ContactPhotoManager.java */
    private class LoaderThread extends HandlerThread implements Handler.Callback {
        private byte[] mBuffer;
        private Handler mLoaderThreadHandler;
        private final Set<Long> mPhotoIds;
        private final Set<String> mPhotoIdsAsStrings;
        private final Set<Request> mPhotoUris;
        private final List<Long> mPreloadPhotoIds;
        private int mPreloadStatus;
        private final ContentResolver mResolver;
        private final StringBuilder mStringBuilder;

        public LoaderThread(ContentResolver contentResolver) {
            super("ContactPhotoLoader");
            this.mStringBuilder = new StringBuilder();
            this.mPhotoIds = Sets.newHashSet();
            this.mPhotoIdsAsStrings = Sets.newHashSet();
            this.mPhotoUris = Sets.newHashSet();
            this.mPreloadPhotoIds = Lists.newArrayList();
            this.mPreloadStatus = 0;
            this.mResolver = contentResolver;
        }

        public void ensureHandler() {
            if (this.mLoaderThreadHandler == null) {
                this.mLoaderThreadHandler = new Handler(getLooper(), this);
            }
        }

        public void requestPreloading() {
            if (this.mPreloadStatus == 2) {
                return;
            }
            ensureHandler();
            if (this.mLoaderThreadHandler.hasMessages(1)) {
                return;
            }
            this.mLoaderThreadHandler.sendEmptyMessageDelayed(0, 1000L);
        }

        public void requestLoading() {
            ensureHandler();
            this.mLoaderThreadHandler.removeMessages(0);
            this.mLoaderThreadHandler.sendEmptyMessage(1);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                preloadPhotosInBackground();
            } else if (i == 1) {
                loadPhotosInBackground();
            }
            return true;
        }

        private void preloadPhotosInBackground() {
            int i = this.mPreloadStatus;
            if (i == 2) {
                return;
            }
            if (i != 0) {
                if (ContactPhotoManagerImpl.this.mBitmapHolderCache.size() > ContactPhotoManagerImpl.this.mBitmapHolderCacheRedZoneBytes) {
                    this.mPreloadStatus = 2;
                    return;
                }
                this.mPhotoIds.clear();
                this.mPhotoIdsAsStrings.clear();
                int i2 = 0;
                int size = this.mPreloadPhotoIds.size();
                while (size > 0 && this.mPhotoIds.size() < 25) {
                    size--;
                    i2++;
                    Long l = this.mPreloadPhotoIds.get(size);
                    this.mPhotoIds.add(l);
                    this.mPhotoIdsAsStrings.add(l.toString());
                    this.mPreloadPhotoIds.remove(size);
                }
                loadThumbnails(true);
                if (size == 0) {
                    this.mPreloadStatus = 2;
                }
                if (Log.isLoggable("ContactPhotoManager", 2)) {
                    Log.v("ContactPhotoManager", "Preloaded " + i2 + " photos.  Cached bytes: " + ContactPhotoManagerImpl.this.mBitmapHolderCache.size());
                }
                requestPreloading();
                return;
            }
            queryPhotosForPreload();
            if (this.mPreloadPhotoIds.isEmpty()) {
                this.mPreloadStatus = 2;
            } else {
                this.mPreloadStatus = 1;
            }
            requestPreloading();
        }

        private void queryPhotosForPreload() {
            Cursor cursor = null;
            try {
                cursor = this.mResolver.query(ContactsContract.Contacts.CONTENT_URI.buildUpon().appendQueryParameter("directory", String.valueOf(0L)).appendQueryParameter("limit", String.valueOf(100)).build(), new String[]{"photo_id"}, "photo_id NOT NULL AND photo_id!=0", null, "starred DESC, last_time_contacted DESC");
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        this.mPreloadPhotoIds.add(0, Long.valueOf(cursor.getLong(0)));
                    }
                }
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }

        private void loadPhotosInBackground() {
            if (PermissionsUtil.hasPermission(ContactPhotoManagerImpl.this.mContext, PermissionsUtil.CONTACTS)) {
                ContactPhotoManagerImpl.this.obtainPhotoIdsAndUrisToLoad(this.mPhotoIds, this.mPhotoIdsAsStrings, this.mPhotoUris);
                loadThumbnails(false);
                loadUriBasedPhotos();
                requestPreloading();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x0108 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00b6 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void loadThumbnails(boolean r15) {
            /*
                Method dump skipped, instructions count: 301
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactPhotoManagerImpl.LoaderThread.loadThumbnails(boolean):void");
        }

        /* JADX WARN: Can't wrap try/catch for region: R(13:4|(1:6)|7|(2:8|9)|(3:14|(5:23|24|(3:25|26|(1:28)(1:29))|30|31)(5:16|17|(1:19)|20|21)|22)|39|(1:41)|42|43|44|(0)(0)|22|2) */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0076, code lost:
        
            r9.disconnect();
            r9 = null;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x00b3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x007f A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void loadUriBasedPhotos() {
            /*
                r13 = this;
                java.lang.String r0 = "Cannot load photo "
                java.lang.String r1 = "ContactPhotoManager"
                java.util.Set<com.android.contacts.ContactPhotoManagerImpl$Request> r2 = r13.mPhotoUris
                java.util.Iterator r2 = r2.iterator()
            La:
                boolean r3 = r2.hasNext()
                if (r3 == 0) goto Lfc
                java.lang.Object r3 = r2.next()
                com.android.contacts.ContactPhotoManagerImpl$Request r3 = (com.android.contacts.ContactPhotoManagerImpl.Request) r3
                android.net.Uri r4 = r3.getUri()
                android.net.Uri r5 = com.android.contacts.ContactPhotoManager.removeContactType(r4)
                byte[] r6 = r13.mBuffer
                if (r6 != 0) goto L28
                r6 = 16384(0x4000, float:2.2959E-41)
                byte[] r6 = new byte[r6]
                r13.mBuffer = r6
            L28:
                r6 = 0
                r7 = 2
                r8 = 0
                java.lang.String r9 = r5.getScheme()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                java.lang.String r10 = "http"
                boolean r10 = r9.equals(r10)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                if (r10 != 0) goto L47
                java.lang.String r10 = "https"
                boolean r9 = r9.equals(r10)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                if (r9 == 0) goto L40
                goto L47
            L40:
                android.content.ContentResolver r9 = r13.mResolver     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                java.io.InputStream r9 = r9.openInputStream(r5)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                goto L7d
            L47:
                r9 = 1
                android.net.TrafficStats.setThreadStatsTag(r9)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                java.net.URL r9 = new java.net.URL     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                java.lang.String r10 = r5.toString()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                r9.<init>(r10)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                java.net.URLConnection r9 = r9.openConnection()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                java.net.HttpURLConnection r9 = (java.net.HttpURLConnection) r9     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                com.android.contacts.ContactPhotoManagerImpl r10 = com.android.contacts.ContactPhotoManagerImpl.this     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                java.lang.String r10 = com.android.contacts.ContactPhotoManagerImpl.access$1000(r10)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                boolean r10 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                if (r10 != 0) goto L71
                java.lang.String r10 = "User-Agent"
                com.android.contacts.ContactPhotoManagerImpl r11 = com.android.contacts.ContactPhotoManagerImpl.this     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                java.lang.String r11 = com.android.contacts.ContactPhotoManagerImpl.access$1000(r11)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                r9.setRequestProperty(r10, r11)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
            L71:
                java.io.InputStream r9 = r9.getInputStream()     // Catch: java.io.IOException -> L76 java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                goto L7a
            L76:
                r9.disconnect()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                r9 = r6
            L7a:
                android.net.TrafficStats.clearThreadStatsTag()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
            L7d:
                if (r9 == 0) goto Lb3
                java.io.ByteArrayOutputStream r10 = new java.io.ByteArrayOutputStream     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                r10.<init>()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
            L84:
                byte[] r11 = r13.mBuffer     // Catch: java.lang.Throwable -> Lae
                int r11 = r9.read(r11)     // Catch: java.lang.Throwable -> Lae
                r12 = -1
                if (r11 == r12) goto L93
                byte[] r12 = r13.mBuffer     // Catch: java.lang.Throwable -> Lae
                r10.write(r12, r8, r11)     // Catch: java.lang.Throwable -> Lae
                goto L84
            L93:
                r9.close()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                com.android.contacts.ContactPhotoManagerImpl r9 = com.android.contacts.ContactPhotoManagerImpl.this     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                byte[] r10 = r10.toByteArray()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                int r11 = r3.getRequestedExtent()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                com.android.contacts.ContactPhotoManagerImpl.access$800(r9, r4, r10, r8, r11)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                com.android.contacts.ContactPhotoManagerImpl r9 = com.android.contacts.ContactPhotoManagerImpl.this     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                android.os.Handler r9 = com.android.contacts.ContactPhotoManagerImpl.access$900(r9)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                r9.sendEmptyMessage(r7)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                goto La
            Lae:
                r10 = move-exception
                r9.close()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                throw r10     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
            Lb3:
                boolean r9 = android.util.Log.isLoggable(r1, r7)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                if (r9 == 0) goto Lcb
                java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                r9.<init>()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                r9.append(r0)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                r9.append(r5)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                java.lang.String r9 = r9.toString()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                android.util.Log.v(r1, r9)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
            Lcb:
                com.android.contacts.ContactPhotoManagerImpl r9 = com.android.contacts.ContactPhotoManagerImpl.this     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                int r10 = r3.getRequestedExtent()     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                com.android.contacts.ContactPhotoManagerImpl.access$800(r9, r4, r6, r8, r10)     // Catch: java.lang.OutOfMemoryError -> Ld6 java.lang.Exception -> Ld8
                goto La
            Ld6:
                r9 = move-exception
                goto Ld9
            Ld8:
                r9 = move-exception
            Ld9:
                boolean r7 = android.util.Log.isLoggable(r1, r7)
                if (r7 == 0) goto Lf1
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                r7.<init>()
                r7.append(r0)
                r7.append(r5)
                java.lang.String r5 = r7.toString()
                android.util.Log.v(r1, r5, r9)
            Lf1:
                com.android.contacts.ContactPhotoManagerImpl r5 = com.android.contacts.ContactPhotoManagerImpl.this
                int r3 = r3.getRequestedExtent()
                com.android.contacts.ContactPhotoManagerImpl.access$800(r5, r4, r6, r8, r3)
                goto La
            Lfc:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactPhotoManagerImpl.LoaderThread.loadUriBasedPhotos():void");
        }
    }

    /* compiled from: ContactPhotoManager.java */
    private static final class Request {
        private final boolean mDarkTheme;
        private final ContactPhotoManager.DefaultImageProvider mDefaultProvider;
        private final ContactPhotoManager.DefaultImageRequest mDefaultRequest;
        private final long mId;
        private final boolean mIsCircular;
        private final int mRequestedExtent;
        private final Uri mUri;

        private Request(long j, Uri uri, int i, boolean z, boolean z2, ContactPhotoManager.DefaultImageProvider defaultImageProvider, ContactPhotoManager.DefaultImageRequest defaultImageRequest) {
            this.mId = j;
            this.mUri = uri;
            this.mDarkTheme = z;
            this.mIsCircular = z2;
            this.mRequestedExtent = i;
            this.mDefaultProvider = defaultImageProvider;
            this.mDefaultRequest = defaultImageRequest;
        }

        public static Request createFromThumbnailId(long j, boolean z, boolean z2, ContactPhotoManager.DefaultImageProvider defaultImageProvider, ContactPhotoManager.DefaultImageRequest defaultImageRequest) {
            return new Request(j, null, -1, z, z2, defaultImageProvider, defaultImageRequest);
        }

        public static Request createFromUri(Uri uri, int i, boolean z, boolean z2, ContactPhotoManager.DefaultImageProvider defaultImageProvider) {
            return createFromUri(uri, i, z, z2, defaultImageProvider, null);
        }

        public static Request createFromUri(Uri uri, int i, boolean z, boolean z2, ContactPhotoManager.DefaultImageProvider defaultImageProvider, ContactPhotoManager.DefaultImageRequest defaultImageRequest) {
            return new Request(0L, uri, i, z, z2, defaultImageProvider, defaultImageRequest);
        }

        public boolean isUriRequest() {
            return this.mUri != null;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public long getId() {
            return this.mId;
        }

        public int getRequestedExtent() {
            return this.mRequestedExtent;
        }

        public int hashCode() {
            long j = this.mId;
            int i = (((((int) (j ^ (j >>> 32))) + 31) * 31) + this.mRequestedExtent) * 31;
            Uri uri = this.mUri;
            return i + (uri == null ? 0 : uri.hashCode());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Request.class != obj.getClass()) {
                return false;
            }
            Request request = (Request) obj;
            return this.mId == request.mId && this.mRequestedExtent == request.mRequestedExtent && UriUtils.areEqual(this.mUri, request.mUri);
        }

        public Object getKey() {
            Uri uri = this.mUri;
            return uri == null ? Long.valueOf(this.mId) : uri;
        }

        public void applyDefaultImage(ImageView imageView, boolean z) {
            ContactPhotoManager.DefaultImageRequest defaultImageRequest;
            ContactPhotoManager.DefaultImageRequest defaultImageRequest2 = this.mDefaultRequest;
            if (defaultImageRequest2 == null) {
                if (z) {
                    if (ContactPhotoManager.isBusinessContactUri(this.mUri)) {
                        defaultImageRequest = ContactPhotoManager.DefaultImageRequest.EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST;
                    } else {
                        defaultImageRequest = ContactPhotoManager.DefaultImageRequest.EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST;
                    }
                } else if (ContactPhotoManager.isBusinessContactUri(this.mUri)) {
                    defaultImageRequest = ContactPhotoManager.DefaultImageRequest.EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST;
                } else {
                    defaultImageRequest = ContactPhotoManager.DefaultImageRequest.EMPTY_DEFAULT_IMAGE_REQUEST;
                }
                defaultImageRequest2 = defaultImageRequest;
            }
            this.mDefaultProvider.applyDefaultImage(imageView, this.mRequestedExtent, this.mDarkTheme, defaultImageRequest2);
        }
    }
}
