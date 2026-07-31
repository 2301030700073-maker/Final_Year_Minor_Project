package com.facebook.react.viewmanagers;

import android.view.View;
import androidx.autofill.HintConstants;
import com.ReactNativeBlobUtil.ReactNativeBlobUtilConst;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.RNPDFPdfViewManagerInterface;
import org.apache.commons.lang3.CharUtils;

/* loaded from: classes3.dex */
public class RNPDFPdfViewManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & RNPDFPdfViewManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    /* JADX WARN: Incorrect types in method signature: (TU;)V */
    public RNPDFPdfViewManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.facebook.react.uimanager.BaseViewManagerDelegate, com.facebook.react.uimanager.ViewManagerDelegate
    /* renamed from: setProperty */
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2012158909:
                if (str.equals("spacing")) {
                    c = 0;
                    break;
                }
                break;
            case -1790919953:
                if (str.equals("enablePaging")) {
                    c = 1;
                    break;
                }
                break;
            case -1379690984:
                if (str.equals("minScale")) {
                    c = 2;
                    break;
                }
                break;
            case -1151046732:
                if (str.equals("scrollEnabled")) {
                    c = 3;
                    break;
                }
                break;
            case -922092170:
                if (str.equals("showsVerticalScrollIndicator")) {
                    c = 4;
                    break;
                }
                break;
            case -657951334:
                if (str.equals("enableAnnotationRendering")) {
                    c = 5;
                    break;
                }
                break;
            case -631667225:
                if (str.equals("enableRTL")) {
                    c = 6;
                    break;
                }
                break;
            case 3433103:
                if (str.equals("page")) {
                    c = 7;
                    break;
                }
                break;
            case 3433509:
                if (str.equals(ReactNativeBlobUtilConst.RNFB_RESPONSE_PATH)) {
                    c = '\b';
                    break;
                }
                break;
            case 109250890:
                if (str.equals("scale")) {
                    c = '\t';
                    break;
                }
                break;
            case 396505670:
                if (str.equals("maxScale")) {
                    c = '\n';
                    break;
                }
                break;
            case 902106275:
                if (str.equals("fitPolicy")) {
                    c = 11;
                    break;
                }
                break;
            case 913503991:
                if (str.equals("singlePage")) {
                    c = '\f';
                    break;
                }
                break;
            case 1216985755:
                if (str.equals(HintConstants.AUTOFILL_HINT_PASSWORD)) {
                    c = CharUtils.CR;
                    break;
                }
                break;
            case 1308044823:
                if (str.equals("enableAntialiasing")) {
                    c = 14;
                    break;
                }
                break;
            case 1387629604:
                if (str.equals("horizontal")) {
                    c = 15;
                    break;
                }
                break;
            case 1539343426:
                if (str.equals("enableDoubleTapZoom")) {
                    c = 16;
                    break;
                }
                break;
            case 1915931784:
                if (str.equals("showsHorizontalScrollIndicator")) {
                    c = 17;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setSpacing(t, obj != null ? ((Double) obj).intValue() : 0);
                break;
            case 1:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setEnablePaging(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 2:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setMinScale(t, obj != null ? ((Double) obj).floatValue() : 0.0f);
                break;
            case 3:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setScrollEnabled(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 4:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setShowsVerticalScrollIndicator(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 5:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setEnableAnnotationRendering(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 6:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setEnableRTL(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 7:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setPage(t, obj != null ? ((Double) obj).intValue() : 0);
                break;
            case '\b':
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setPath(t, obj != null ? (String) obj : null);
                break;
            case '\t':
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setScale(t, obj != null ? ((Double) obj).floatValue() : 0.0f);
                break;
            case '\n':
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setMaxScale(t, obj != null ? ((Double) obj).floatValue() : 0.0f);
                break;
            case 11:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setFitPolicy(t, obj != null ? ((Double) obj).intValue() : 0);
                break;
            case '\f':
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setSinglePage(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case '\r':
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setPassword(t, obj != null ? (String) obj : null);
                break;
            case 14:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setEnableAntialiasing(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 15:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setHorizontal(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 16:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setEnableDoubleTapZoom(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 17:
                ((RNPDFPdfViewManagerInterface) this.mViewManager).setShowsHorizontalScrollIndicator(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }

    @Override // com.facebook.react.uimanager.BaseViewManagerDelegate, com.facebook.react.uimanager.ViewManagerDelegate
    /* renamed from: receiveCommand */
    public void kotlinCompat$receiveCommand(T t, String str, ReadableArray readableArray) {
        str.hashCode();
        if (str.equals("setNativePage")) {
            ((RNPDFPdfViewManagerInterface) this.mViewManager).setNativePage(t, readableArray.getInt(0));
        }
    }
}
