package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.mozilla.javascript.Token;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ConstraintSet {
    public static final int[] VISIBILITY_FLAGS = {0, 4, 8};
    public static final SparseIntArray sMapToConstant;
    public static final SparseIntArray sOverrideMapToConstant;
    public final HashMap mSavedAttributes = new HashMap();
    public final boolean mForceId = true;
    public final HashMap mConstraints = new HashMap();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Layout {
        public static final SparseIntArray sMapToConstant;
        public int baselineMargin;
        public int baselineToBaseline;
        public int baselineToBottom;
        public int baselineToTop;
        public int bottomMargin;
        public int bottomToBottom;
        public int bottomToTop;
        public float circleAngle;
        public int circleConstraint;
        public int circleRadius;
        public boolean constrainedHeight;
        public boolean constrainedWidth;
        public String dimensionRatio;
        public int editorAbsoluteX;
        public int editorAbsoluteY;
        public int endMargin;
        public int endToEnd;
        public int endToStart;
        public int goneBaselineMargin;
        public int goneBottomMargin;
        public int goneEndMargin;
        public int goneLeftMargin;
        public int goneRightMargin;
        public int goneStartMargin;
        public int goneTopMargin;
        public int guideBegin;
        public int guideEnd;
        public float guidePercent;
        public boolean guidelineUseRtl;
        public int heightDefault;
        public int heightMax;
        public int heightMin;
        public float heightPercent;
        public float horizontalBias;
        public int horizontalChainStyle;
        public float horizontalWeight;
        public int leftMargin;
        public int leftToLeft;
        public int leftToRight;
        public boolean mBarrierAllowsGoneWidgets;
        public int mBarrierDirection;
        public int mBarrierMargin;
        public String mConstraintTag;
        public int mHeight;
        public int mHelperType;
        public boolean mIsGuideline;
        public String mReferenceIdString;
        public int[] mReferenceIds;
        public int mWidth;
        public int mWrapBehavior;
        public int orientation;
        public int rightMargin;
        public int rightToLeft;
        public int rightToRight;
        public int startMargin;
        public int startToEnd;
        public int startToStart;
        public int topMargin;
        public int topToBottom;
        public int topToTop;
        public float verticalBias;
        public int verticalChainStyle;
        public float verticalWeight;
        public int widthDefault;
        public int widthMax;
        public int widthMin;
        public float widthPercent;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sMapToConstant = sparseIntArray;
            sparseIntArray.append(43, 24);
            sparseIntArray.append(44, 25);
            sparseIntArray.append(46, 28);
            sparseIntArray.append(47, 29);
            sparseIntArray.append(52, 35);
            sparseIntArray.append(51, 34);
            sparseIntArray.append(24, 4);
            sparseIntArray.append(23, 3);
            sparseIntArray.append(19, 1);
            sparseIntArray.append(61, 6);
            sparseIntArray.append(62, 7);
            sparseIntArray.append(31, 17);
            sparseIntArray.append(32, 18);
            sparseIntArray.append(33, 19);
            sparseIntArray.append(15, 90);
            sparseIntArray.append(0, 26);
            sparseIntArray.append(48, 31);
            sparseIntArray.append(49, 32);
            sparseIntArray.append(30, 10);
            sparseIntArray.append(29, 9);
            sparseIntArray.append(66, 13);
            sparseIntArray.append(69, 16);
            sparseIntArray.append(67, 14);
            sparseIntArray.append(64, 11);
            sparseIntArray.append(68, 15);
            sparseIntArray.append(65, 12);
            sparseIntArray.append(55, 38);
            sparseIntArray.append(41, 37);
            sparseIntArray.append(40, 39);
            sparseIntArray.append(54, 40);
            sparseIntArray.append(39, 20);
            sparseIntArray.append(53, 36);
            sparseIntArray.append(28, 5);
            sparseIntArray.append(42, 91);
            sparseIntArray.append(50, 91);
            sparseIntArray.append(45, 91);
            sparseIntArray.append(22, 91);
            sparseIntArray.append(18, 91);
            sparseIntArray.append(3, 23);
            sparseIntArray.append(5, 27);
            sparseIntArray.append(7, 30);
            sparseIntArray.append(8, 8);
            sparseIntArray.append(4, 33);
            sparseIntArray.append(6, 2);
            sparseIntArray.append(1, 22);
            sparseIntArray.append(2, 21);
            sparseIntArray.append(56, 41);
            sparseIntArray.append(34, 42);
            sparseIntArray.append(17, 87);
            sparseIntArray.append(16, 88);
            sparseIntArray.append(71, 76);
            sparseIntArray.append(25, 61);
            sparseIntArray.append(27, 62);
            sparseIntArray.append(26, 63);
            sparseIntArray.append(60, 69);
            sparseIntArray.append(38, 70);
            sparseIntArray.append(12, 71);
            sparseIntArray.append(10, 72);
            sparseIntArray.append(11, 73);
            sparseIntArray.append(13, 74);
            sparseIntArray.append(9, 75);
            sparseIntArray.append(58, 84);
            sparseIntArray.append(59, 86);
            sparseIntArray.append(58, 83);
            sparseIntArray.append(37, 85);
            sparseIntArray.append(56, 87);
            sparseIntArray.append(34, 88);
            sparseIntArray.append(91, 89);
            sparseIntArray.append(15, 90);
        }

        public final void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                SparseIntArray sparseIntArray = sMapToConstant;
                int i2 = sparseIntArray.get(index);
                switch (i2) {
                    case 1:
                        this.baselineToBaseline = ConstraintSet.lookupID(obtainStyledAttributes, index, this.baselineToBaseline);
                        break;
                    case 2:
                        this.bottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.bottomMargin);
                        break;
                    case 3:
                        this.bottomToBottom = ConstraintSet.lookupID(obtainStyledAttributes, index, this.bottomToBottom);
                        break;
                    case 4:
                        this.bottomToTop = ConstraintSet.lookupID(obtainStyledAttributes, index, this.bottomToTop);
                        break;
                    case 5:
                        this.dimensionRatio = obtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                        break;
                    case 7:
                        this.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                        break;
                    case 8:
                        this.endMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.endMargin);
                        break;
                    case 9:
                        this.endToEnd = ConstraintSet.lookupID(obtainStyledAttributes, index, this.endToEnd);
                        break;
                    case 10:
                        this.endToStart = ConstraintSet.lookupID(obtainStyledAttributes, index, this.endToStart);
                        break;
                    case 11:
                        this.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                        break;
                    case 12:
                        this.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                        break;
                    case 13:
                        this.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                        break;
                    case 14:
                        this.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                        break;
                    case 15:
                        this.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                        break;
                    case 16:
                        this.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                        break;
                    case 17:
                        this.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                        break;
                    case 18:
                        this.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                        break;
                    case 19:
                        this.guidePercent = obtainStyledAttributes.getFloat(index, this.guidePercent);
                        break;
                    case 20:
                        this.horizontalBias = obtainStyledAttributes.getFloat(index, this.horizontalBias);
                        break;
                    case 21:
                        this.mHeight = obtainStyledAttributes.getLayoutDimension(index, this.mHeight);
                        break;
                    case 22:
                        this.mWidth = obtainStyledAttributes.getLayoutDimension(index, this.mWidth);
                        break;
                    case 23:
                        this.leftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.leftMargin);
                        break;
                    case 24:
                        this.leftToLeft = ConstraintSet.lookupID(obtainStyledAttributes, index, this.leftToLeft);
                        break;
                    case 25:
                        this.leftToRight = ConstraintSet.lookupID(obtainStyledAttributes, index, this.leftToRight);
                        break;
                    case 26:
                        this.orientation = obtainStyledAttributes.getInt(index, this.orientation);
                        break;
                    case 27:
                        this.rightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.rightMargin);
                        break;
                    case 28:
                        this.rightToLeft = ConstraintSet.lookupID(obtainStyledAttributes, index, this.rightToLeft);
                        break;
                    case 29:
                        this.rightToRight = ConstraintSet.lookupID(obtainStyledAttributes, index, this.rightToRight);
                        break;
                    case 30:
                        this.startMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.startMargin);
                        break;
                    case 31:
                        this.startToEnd = ConstraintSet.lookupID(obtainStyledAttributes, index, this.startToEnd);
                        break;
                    case 32:
                        this.startToStart = ConstraintSet.lookupID(obtainStyledAttributes, index, this.startToStart);
                        break;
                    case 33:
                        this.topMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.topMargin);
                        break;
                    case 34:
                        this.topToBottom = ConstraintSet.lookupID(obtainStyledAttributes, index, this.topToBottom);
                        break;
                    case 35:
                        this.topToTop = ConstraintSet.lookupID(obtainStyledAttributes, index, this.topToTop);
                        break;
                    case 36:
                        this.verticalBias = obtainStyledAttributes.getFloat(index, this.verticalBias);
                        break;
                    case Token.SETPROP /* 37 */:
                        this.horizontalWeight = obtainStyledAttributes.getFloat(index, this.horizontalWeight);
                        break;
                    case 38:
                        this.verticalWeight = obtainStyledAttributes.getFloat(index, this.verticalWeight);
                        break;
                    case Token.GETELEM /* 39 */:
                        this.horizontalChainStyle = obtainStyledAttributes.getInt(index, this.horizontalChainStyle);
                        break;
                    case Token.GETELEM_SUPER /* 40 */:
                        this.verticalChainStyle = obtainStyledAttributes.getInt(index, this.verticalChainStyle);
                        break;
                    case Token.SETELEM /* 41 */:
                        ConstraintSet.parseDimensionConstraints(this, obtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        ConstraintSet.parseDimensionConstraints(this, obtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i2) {
                            case Token.SETVAR /* 61 */:
                                this.circleConstraint = ConstraintSet.lookupID(obtainStyledAttributes, index, this.circleConstraint);
                                break;
                            case Token.CATCH_SCOPE /* 62 */:
                                this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                                break;
                            case Token.ENUM_INIT_KEYS /* 63 */:
                                this.circleAngle = obtainStyledAttributes.getFloat(index, this.circleAngle);
                                break;
                            default:
                                switch (i2) {
                                    case Token.THISFN /* 69 */:
                                        this.widthPercent = obtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case Token.RETURN_RESULT /* 70 */:
                                        this.heightPercent = obtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 71:
                                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                        break;
                                    case Token.OBJECTLIT /* 72 */:
                                        this.mBarrierDirection = obtainStyledAttributes.getInt(index, this.mBarrierDirection);
                                        break;
                                    case Token.GET_REF /* 73 */:
                                        this.mBarrierMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.mBarrierMargin);
                                        break;
                                    case Token.SET_REF /* 74 */:
                                        this.mReferenceIdString = obtainStyledAttributes.getString(index);
                                        break;
                                    case Token.DEL_REF /* 75 */:
                                        this.mBarrierAllowsGoneWidgets = obtainStyledAttributes.getBoolean(index, this.mBarrierAllowsGoneWidgets);
                                        break;
                                    case Token.REF_CALL /* 76 */:
                                        this.mWrapBehavior = obtainStyledAttributes.getInt(index, this.mWrapBehavior);
                                        break;
                                    case Token.REF_SPECIAL /* 77 */:
                                        this.baselineToTop = ConstraintSet.lookupID(obtainStyledAttributes, index, this.baselineToTop);
                                        break;
                                    case Token.YIELD /* 78 */:
                                        this.baselineToBottom = ConstraintSet.lookupID(obtainStyledAttributes, index, this.baselineToBottom);
                                        break;
                                    case Token.SUPER /* 79 */:
                                        this.goneBaselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                                        break;
                                    case Token.STRICT_SETNAME /* 80 */:
                                        this.baselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                                        break;
                                    case Token.EXP /* 81 */:
                                        this.widthDefault = obtainStyledAttributes.getInt(index, this.widthDefault);
                                        break;
                                    case Token.DEFAULTNAMESPACE /* 82 */:
                                        this.heightDefault = obtainStyledAttributes.getInt(index, this.heightDefault);
                                        break;
                                    case Token.ESCXMLATTR /* 83 */:
                                        this.heightMax = obtainStyledAttributes.getDimensionPixelSize(index, this.heightMax);
                                        break;
                                    case Token.ESCXMLTEXT /* 84 */:
                                        this.widthMax = obtainStyledAttributes.getDimensionPixelSize(index, this.widthMax);
                                        break;
                                    case Token.REF_MEMBER /* 85 */:
                                        this.heightMin = obtainStyledAttributes.getDimensionPixelSize(index, this.heightMin);
                                        break;
                                    case Token.REF_NS_MEMBER /* 86 */:
                                        this.widthMin = obtainStyledAttributes.getDimensionPixelSize(index, this.widthMin);
                                        break;
                                    case Token.REF_NAME /* 87 */:
                                        this.constrainedWidth = obtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                                        break;
                                    case Token.REF_NS_NAME /* 88 */:
                                        this.constrainedHeight = obtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                                        break;
                                    case 89:
                                        this.mConstraintTag = obtainStyledAttributes.getString(index);
                                        break;
                                    case Token.TRY /* 90 */:
                                        this.guidelineUseRtl = obtainStyledAttributes.getBoolean(index, this.guidelineUseRtl);
                                        break;
                                    case Token.SEMI /* 91 */:
                                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                        break;
                                    default:
                                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                        break;
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Motion {
        public static final SparseIntArray sMapToConstant;
        public int mAnimateCircleAngleTo;
        public int mAnimateRelativeTo;
        public float mMotionStagger;
        public int mPathMotionArc;
        public float mPathRotate;
        public int mQuantizeInterpolatorID;
        public String mQuantizeInterpolatorString;
        public float mQuantizeMotionPhase;
        public int mQuantizeMotionSteps;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sMapToConstant = sparseIntArray;
            sparseIntArray.append(3, 1);
            sparseIntArray.append(5, 2);
            sparseIntArray.append(9, 3);
            sparseIntArray.append(2, 4);
            sparseIntArray.append(1, 5);
            sparseIntArray.append(0, 6);
            sparseIntArray.append(4, 7);
            sparseIntArray.append(8, 8);
            sparseIntArray.append(7, 9);
            sparseIntArray.append(6, 10);
        }

        public final void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Motion);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (sMapToConstant.get(index)) {
                    case 1:
                        this.mPathRotate = obtainStyledAttributes.getFloat(index, this.mPathRotate);
                        break;
                    case 2:
                        this.mPathMotionArc = obtainStyledAttributes.getInt(index, this.mPathMotionArc);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            String str = Easing.NAMED_EASING[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.mAnimateRelativeTo = ConstraintSet.lookupID(obtainStyledAttributes, index, this.mAnimateRelativeTo);
                        break;
                    case 6:
                        this.mAnimateCircleAngleTo = obtainStyledAttributes.getInteger(index, this.mAnimateCircleAngleTo);
                        break;
                    case 7:
                        this.mMotionStagger = obtainStyledAttributes.getFloat(index, this.mMotionStagger);
                        break;
                    case 8:
                        this.mQuantizeMotionSteps = obtainStyledAttributes.getInteger(index, this.mQuantizeMotionSteps);
                        break;
                    case 9:
                        this.mQuantizeMotionPhase = obtainStyledAttributes.getFloat(index, this.mQuantizeMotionPhase);
                        break;
                    case 10:
                        int i2 = obtainStyledAttributes.peekValue(index).type;
                        if (i2 == 1) {
                            this.mQuantizeInterpolatorID = obtainStyledAttributes.getResourceId(index, -1);
                            break;
                        } else if (i2 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            this.mQuantizeInterpolatorString = string;
                            if (string.indexOf("/") > 0) {
                                this.mQuantizeInterpolatorID = obtainStyledAttributes.getResourceId(index, -1);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            obtainStyledAttributes.getInteger(index, this.mQuantizeInterpolatorID);
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PropertySet {
        public float alpha;
        public float mProgress;
        public int mVisibilityMode;
        public int visibility;

        public final void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PropertySet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 1) {
                    this.alpha = obtainStyledAttributes.getFloat(index, this.alpha);
                } else if (index == 0) {
                    int i2 = obtainStyledAttributes.getInt(index, this.visibility);
                    this.visibility = i2;
                    this.visibility = ConstraintSet.VISIBILITY_FLAGS[i2];
                } else if (index == 4) {
                    this.mVisibilityMode = obtainStyledAttributes.getInt(index, this.mVisibilityMode);
                } else if (index == 3) {
                    this.mProgress = obtainStyledAttributes.getFloat(index, this.mProgress);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Transform {
        public static final SparseIntArray sMapToConstant;
        public boolean applyElevation;
        public float elevation;
        public float rotation;
        public float rotationX;
        public float rotationY;
        public float scaleX;
        public float scaleY;
        public int transformPivotTarget;
        public float transformPivotX;
        public float transformPivotY;
        public float translationX;
        public float translationY;
        public float translationZ;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            sMapToConstant = sparseIntArray;
            sparseIntArray.append(6, 1);
            sparseIntArray.append(7, 2);
            sparseIntArray.append(8, 3);
            sparseIntArray.append(4, 4);
            sparseIntArray.append(5, 5);
            sparseIntArray.append(0, 6);
            sparseIntArray.append(1, 7);
            sparseIntArray.append(2, 8);
            sparseIntArray.append(3, 9);
            sparseIntArray.append(9, 10);
            sparseIntArray.append(10, 11);
            sparseIntArray.append(11, 12);
        }

        public final void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Transform);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (sMapToConstant.get(index)) {
                    case 1:
                        this.rotation = obtainStyledAttributes.getFloat(index, this.rotation);
                        break;
                    case 2:
                        this.rotationX = obtainStyledAttributes.getFloat(index, this.rotationX);
                        break;
                    case 3:
                        this.rotationY = obtainStyledAttributes.getFloat(index, this.rotationY);
                        break;
                    case 4:
                        this.scaleX = obtainStyledAttributes.getFloat(index, this.scaleX);
                        break;
                    case 5:
                        this.scaleY = obtainStyledAttributes.getFloat(index, this.scaleY);
                        break;
                    case 6:
                        this.transformPivotX = obtainStyledAttributes.getDimension(index, this.transformPivotX);
                        break;
                    case 7:
                        this.transformPivotY = obtainStyledAttributes.getDimension(index, this.transformPivotY);
                        break;
                    case 8:
                        this.translationX = obtainStyledAttributes.getDimension(index, this.translationX);
                        break;
                    case 9:
                        this.translationY = obtainStyledAttributes.getDimension(index, this.translationY);
                        break;
                    case 10:
                        this.translationZ = obtainStyledAttributes.getDimension(index, this.translationZ);
                        break;
                    case 11:
                        this.applyElevation = true;
                        this.elevation = obtainStyledAttributes.getDimension(index, this.elevation);
                        break;
                    case 12:
                        this.transformPivotTarget = ConstraintSet.lookupID(obtainStyledAttributes, index, this.transformPivotTarget);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sMapToConstant = sparseIntArray;
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        sOverrideMapToConstant = sparseIntArray2;
        sparseIntArray.append(82, 25);
        sparseIntArray.append(83, 26);
        sparseIntArray.append(85, 29);
        sparseIntArray.append(86, 30);
        sparseIntArray.append(92, 36);
        sparseIntArray.append(91, 35);
        sparseIntArray.append(63, 4);
        sparseIntArray.append(62, 3);
        sparseIntArray.append(58, 1);
        sparseIntArray.append(60, 91);
        sparseIntArray.append(59, 92);
        sparseIntArray.append(Token.ASSIGN_LOGICAL_OR, 6);
        sparseIntArray.append(Token.ASSIGN_BITXOR, 7);
        sparseIntArray.append(70, 17);
        sparseIntArray.append(71, 18);
        sparseIntArray.append(72, 19);
        sparseIntArray.append(54, 99);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(87, 32);
        sparseIntArray.append(88, 33);
        sparseIntArray.append(69, 10);
        sparseIntArray.append(68, 9);
        sparseIntArray.append(Token.ASSIGN_RSH, 13);
        sparseIntArray.append(Token.ASSIGN_SUB, 16);
        sparseIntArray.append(Token.ASSIGN_URSH, 14);
        sparseIntArray.append(Token.ASSIGN_LOGICAL_AND, 11);
        sparseIntArray.append(Token.ASSIGN_ADD, 15);
        sparseIntArray.append(Token.ASSIGN_LSH, 12);
        sparseIntArray.append(95, 40);
        sparseIntArray.append(80, 39);
        sparseIntArray.append(79, 41);
        sparseIntArray.append(94, 42);
        sparseIntArray.append(78, 20);
        sparseIntArray.append(93, 37);
        sparseIntArray.append(67, 5);
        sparseIntArray.append(81, 87);
        sparseIntArray.append(90, 87);
        sparseIntArray.append(84, 87);
        sparseIntArray.append(61, 87);
        sparseIntArray.append(57, 87);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(96, 95);
        sparseIntArray.append(73, 96);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(97, 54);
        sparseIntArray.append(74, 55);
        sparseIntArray.append(98, 56);
        sparseIntArray.append(75, 57);
        sparseIntArray.append(99, 58);
        sparseIntArray.append(76, 59);
        sparseIntArray.append(64, 61);
        sparseIntArray.append(66, 62);
        sparseIntArray.append(65, 63);
        sparseIntArray.append(28, 64);
        sparseIntArray.append(Token.DOT, 65);
        sparseIntArray.append(35, 66);
        sparseIntArray.append(Token.FUNCTION, 67);
        sparseIntArray.append(Token.ASSIGN_EXP, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(Token.ASSIGN_MOD, 68);
        sparseIntArray.append(100, 69);
        sparseIntArray.append(77, 70);
        sparseIntArray.append(Token.ASSIGN_DIV, 97);
        sparseIntArray.append(32, 71);
        sparseIntArray.append(30, 72);
        sparseIntArray.append(31, 73);
        sparseIntArray.append(33, 74);
        sparseIntArray.append(29, 75);
        sparseIntArray.append(114, 76);
        sparseIntArray.append(89, 77);
        sparseIntArray.append(Token.EXPORT, 78);
        sparseIntArray.append(56, 80);
        sparseIntArray.append(55, 81);
        sparseIntArray.append(116, 82);
        sparseIntArray.append(120, 83);
        sparseIntArray.append(Token.INC, 84);
        sparseIntArray.append(Token.AND, 85);
        sparseIntArray.append(Token.OR, 86);
        sparseIntArray2.append(85, 6);
        sparseIntArray2.append(85, 7);
        sparseIntArray2.append(0, 27);
        sparseIntArray2.append(89, 13);
        sparseIntArray2.append(92, 16);
        sparseIntArray2.append(90, 14);
        sparseIntArray2.append(87, 11);
        sparseIntArray2.append(91, 15);
        sparseIntArray2.append(88, 12);
        sparseIntArray2.append(78, 40);
        sparseIntArray2.append(71, 39);
        sparseIntArray2.append(70, 41);
        sparseIntArray2.append(77, 42);
        sparseIntArray2.append(69, 20);
        sparseIntArray2.append(76, 37);
        sparseIntArray2.append(60, 5);
        sparseIntArray2.append(72, 87);
        sparseIntArray2.append(75, 87);
        sparseIntArray2.append(73, 87);
        sparseIntArray2.append(57, 87);
        sparseIntArray2.append(56, 87);
        sparseIntArray2.append(5, 24);
        sparseIntArray2.append(7, 28);
        sparseIntArray2.append(23, 31);
        sparseIntArray2.append(24, 8);
        sparseIntArray2.append(6, 34);
        sparseIntArray2.append(8, 2);
        sparseIntArray2.append(3, 23);
        sparseIntArray2.append(4, 21);
        sparseIntArray2.append(79, 95);
        sparseIntArray2.append(64, 96);
        sparseIntArray2.append(2, 22);
        sparseIntArray2.append(13, 43);
        sparseIntArray2.append(26, 44);
        sparseIntArray2.append(21, 45);
        sparseIntArray2.append(22, 46);
        sparseIntArray2.append(20, 60);
        sparseIntArray2.append(18, 47);
        sparseIntArray2.append(19, 48);
        sparseIntArray2.append(14, 49);
        sparseIntArray2.append(15, 50);
        sparseIntArray2.append(16, 51);
        sparseIntArray2.append(17, 52);
        sparseIntArray2.append(25, 53);
        sparseIntArray2.append(80, 54);
        sparseIntArray2.append(65, 55);
        sparseIntArray2.append(81, 56);
        sparseIntArray2.append(66, 57);
        sparseIntArray2.append(82, 58);
        sparseIntArray2.append(67, 59);
        sparseIntArray2.append(59, 62);
        sparseIntArray2.append(58, 63);
        sparseIntArray2.append(28, 64);
        sparseIntArray2.append(Token.ASSIGN_LSH, 65);
        sparseIntArray2.append(34, 66);
        sparseIntArray2.append(Token.ASSIGN_RSH, 67);
        sparseIntArray2.append(96, 79);
        sparseIntArray2.append(1, 38);
        sparseIntArray2.append(97, 98);
        sparseIntArray2.append(95, 68);
        sparseIntArray2.append(83, 69);
        sparseIntArray2.append(68, 70);
        sparseIntArray2.append(32, 71);
        sparseIntArray2.append(30, 72);
        sparseIntArray2.append(31, 73);
        sparseIntArray2.append(33, 74);
        sparseIntArray2.append(29, 75);
        sparseIntArray2.append(98, 76);
        sparseIntArray2.append(74, 77);
        sparseIntArray2.append(Token.ASSIGN_URSH, 78);
        sparseIntArray2.append(55, 80);
        sparseIntArray2.append(54, 81);
        sparseIntArray2.append(100, 82);
        sparseIntArray2.append(Token.ASSIGN_LOGICAL_AND, 83);
        sparseIntArray2.append(Token.ASSIGN_BITAND, 84);
        sparseIntArray2.append(Token.ASSIGN_BITXOR, 85);
        sparseIntArray2.append(Token.ASSIGN_LOGICAL_OR, 86);
        sparseIntArray2.append(94, 97);
    }

    public static int[] convertReferenceString(Barrier barrier, String str) {
        int i;
        String[] split = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            Object obj = null;
            try {
                i = R$id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, TtmlNode.ATTR_ID, context.getPackageName());
            }
            if (i == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) barrier.getParent();
                if (Modifier.CC.m182m((Object) trim)) {
                    HashMap hashMap = constraintLayout.mDesignIds;
                    if (hashMap != null && hashMap.containsKey(trim)) {
                        obj = constraintLayout.mDesignIds.get(trim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    i = ((Integer) obj).intValue();
                }
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        return i3 != split.length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    public static Constraint fillFromAttributeList(Context context, AttributeSet attributeSet, boolean z) {
        int i;
        int i2;
        Constraint constraint = new Constraint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? R$styleable.ConstraintOverride : R$styleable.Constraint);
        PropertySet propertySet = constraint.propertySet;
        Transform transform = constraint.transform;
        Motion motion = constraint.motion;
        Layout layout = constraint.layout;
        int[] iArr = VISIBILITY_FLAGS;
        String[] strArr = Easing.NAMED_EASING;
        SparseIntArray sparseIntArray = sMapToConstant;
        if (z) {
            int indexCount = obtainStyledAttributes.getIndexCount();
            Constraint.Delta delta = new Constraint.Delta();
            delta.mTypeInt = new int[10];
            delta.mValueInt = new int[10];
            delta.mCountInt = 0;
            delta.mTypeFloat = new int[10];
            delta.mValueFloat = new float[10];
            delta.mCountFloat = 0;
            delta.mTypeString = new int[5];
            delta.mValueString = new String[5];
            delta.mCountString = 0;
            delta.mTypeBoolean = new int[4];
            delta.mValueBoolean = new boolean[4];
            delta.mCountBoolean = 0;
            motion.getClass();
            layout.getClass();
            transform.getClass();
            int i3 = 0;
            while (i3 < indexCount) {
                int index = obtainStyledAttributes.getIndex(i3);
                int i4 = indexCount;
                switch (sOverrideMapToConstant.get(index)) {
                    case 2:
                        i2 = i3;
                        delta.add(2, obtainStyledAttributes.getDimensionPixelSize(index, layout.bottomMargin));
                        continue;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case 30:
                    case 32:
                    case 33:
                    case 35:
                    case 36:
                    case Token.SETVAR /* 61 */:
                    case Token.REF_NS_NAME /* 88 */:
                    case 89:
                    case Token.TRY /* 90 */:
                    case Token.SEMI /* 91 */:
                    case Token.LB /* 92 */:
                    default:
                        StringBuilder sb = new StringBuilder("Unknown attribute 0x");
                        i2 = i3;
                        sb.append(Integer.toHexString(index));
                        sb.append("   ");
                        sb.append(sparseIntArray.get(index));
                        Log.w("ConstraintSet", sb.toString());
                        break;
                    case 5:
                        i2 = i3;
                        delta.add(5, obtainStyledAttributes.getString(index));
                        continue;
                    case 6:
                        i2 = i3;
                        delta.add(6, obtainStyledAttributes.getDimensionPixelOffset(index, layout.editorAbsoluteX));
                        break;
                    case 7:
                        i2 = i3;
                        delta.add(7, obtainStyledAttributes.getDimensionPixelOffset(index, layout.editorAbsoluteY));
                        break;
                    case 8:
                        i2 = i3;
                        delta.add(8, obtainStyledAttributes.getDimensionPixelSize(index, layout.endMargin));
                        break;
                    case 11:
                        i2 = i3;
                        delta.add(11, obtainStyledAttributes.getDimensionPixelSize(index, layout.goneBottomMargin));
                        break;
                    case 12:
                        i2 = i3;
                        delta.add(12, obtainStyledAttributes.getDimensionPixelSize(index, layout.goneEndMargin));
                        break;
                    case 13:
                        i2 = i3;
                        delta.add(13, obtainStyledAttributes.getDimensionPixelSize(index, layout.goneLeftMargin));
                        break;
                    case 14:
                        i2 = i3;
                        delta.add(14, obtainStyledAttributes.getDimensionPixelSize(index, layout.goneRightMargin));
                        break;
                    case 15:
                        i2 = i3;
                        delta.add(15, obtainStyledAttributes.getDimensionPixelSize(index, layout.goneStartMargin));
                        break;
                    case 16:
                        i2 = i3;
                        delta.add(16, obtainStyledAttributes.getDimensionPixelSize(index, layout.goneTopMargin));
                        break;
                    case 17:
                        i2 = i3;
                        delta.add(17, obtainStyledAttributes.getDimensionPixelOffset(index, layout.guideBegin));
                        break;
                    case 18:
                        i2 = i3;
                        delta.add(18, obtainStyledAttributes.getDimensionPixelOffset(index, layout.guideEnd));
                        break;
                    case 19:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, layout.guidePercent), 19);
                        break;
                    case 20:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, layout.horizontalBias), 20);
                        break;
                    case 21:
                        i2 = i3;
                        delta.add(21, obtainStyledAttributes.getLayoutDimension(index, layout.mHeight));
                        break;
                    case 22:
                        i2 = i3;
                        delta.add(22, iArr[obtainStyledAttributes.getInt(index, propertySet.visibility)]);
                        break;
                    case 23:
                        i2 = i3;
                        delta.add(23, obtainStyledAttributes.getLayoutDimension(index, layout.mWidth));
                        break;
                    case 24:
                        i2 = i3;
                        delta.add(24, obtainStyledAttributes.getDimensionPixelSize(index, layout.leftMargin));
                        break;
                    case 27:
                        i2 = i3;
                        delta.add(27, obtainStyledAttributes.getInt(index, layout.orientation));
                        break;
                    case 28:
                        i2 = i3;
                        delta.add(28, obtainStyledAttributes.getDimensionPixelSize(index, layout.rightMargin));
                        break;
                    case 31:
                        i2 = i3;
                        delta.add(31, obtainStyledAttributes.getDimensionPixelSize(index, layout.startMargin));
                        break;
                    case 34:
                        i2 = i3;
                        delta.add(34, obtainStyledAttributes.getDimensionPixelSize(index, layout.topMargin));
                        break;
                    case Token.SETPROP /* 37 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, layout.verticalBias), 37);
                        break;
                    case 38:
                        i2 = i3;
                        int resourceId = obtainStyledAttributes.getResourceId(index, constraint.mViewId);
                        constraint.mViewId = resourceId;
                        delta.add(38, resourceId);
                        break;
                    case Token.GETELEM /* 39 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, layout.horizontalWeight), 39);
                        break;
                    case Token.GETELEM_SUPER /* 40 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, layout.verticalWeight), 40);
                        break;
                    case Token.SETELEM /* 41 */:
                        i2 = i3;
                        delta.add(41, obtainStyledAttributes.getInt(index, layout.horizontalChainStyle));
                        break;
                    case 42:
                        i2 = i3;
                        delta.add(42, obtainStyledAttributes.getInt(index, layout.verticalChainStyle));
                        break;
                    case Token.CALL /* 43 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, propertySet.alpha), 43);
                        break;
                    case Token.NAME /* 44 */:
                        i2 = i3;
                        delta.add(44, true);
                        delta.add(obtainStyledAttributes.getDimension(index, transform.elevation), 44);
                        break;
                    case Token.NUMBER /* 45 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, transform.rotationX), 45);
                        break;
                    case Token.STRING /* 46 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, transform.rotationY), 46);
                        break;
                    case Token.NULL /* 47 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, transform.scaleX), 47);
                        break;
                    case Token.THIS /* 48 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, transform.scaleY), 48);
                        break;
                    case Token.FALSE /* 49 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getDimension(index, transform.transformPivotX), 49);
                        break;
                    case 50:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getDimension(index, transform.transformPivotY), 50);
                        break;
                    case Token.SHEQ /* 51 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getDimension(index, transform.translationX), 51);
                        break;
                    case Token.SHNE /* 52 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getDimension(index, transform.translationY), 52);
                        break;
                    case Token.REGEXP /* 53 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getDimension(index, transform.translationZ), 53);
                        break;
                    case Token.BINDNAME /* 54 */:
                        i2 = i3;
                        delta.add(54, obtainStyledAttributes.getInt(index, layout.widthDefault));
                        break;
                    case Token.THROW /* 55 */:
                        i2 = i3;
                        delta.add(55, obtainStyledAttributes.getInt(index, layout.heightDefault));
                        break;
                    case Token.RETHROW /* 56 */:
                        i2 = i3;
                        delta.add(56, obtainStyledAttributes.getDimensionPixelSize(index, layout.widthMax));
                        break;
                    case Token.IN /* 57 */:
                        i2 = i3;
                        delta.add(57, obtainStyledAttributes.getDimensionPixelSize(index, layout.heightMax));
                        break;
                    case Token.INSTANCEOF /* 58 */:
                        i2 = i3;
                        delta.add(58, obtainStyledAttributes.getDimensionPixelSize(index, layout.widthMin));
                        break;
                    case Token.LOCAL_LOAD /* 59 */:
                        i2 = i3;
                        delta.add(59, obtainStyledAttributes.getDimensionPixelSize(index, layout.heightMin));
                        break;
                    case Token.GETVAR /* 60 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, transform.rotation), 60);
                        break;
                    case Token.CATCH_SCOPE /* 62 */:
                        i2 = i3;
                        delta.add(62, obtainStyledAttributes.getDimensionPixelSize(index, layout.circleRadius));
                        break;
                    case Token.ENUM_INIT_KEYS /* 63 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, layout.circleAngle), 63);
                        break;
                    case 64:
                        i2 = i3;
                        delta.add(64, lookupID(obtainStyledAttributes, index, motion.mAnimateRelativeTo));
                        break;
                    case Token.ENUM_INIT_ARRAY /* 65 */:
                        i2 = i3;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            delta.add(65, obtainStyledAttributes.getString(index));
                            break;
                        } else {
                            delta.add(65, strArr[obtainStyledAttributes.getInteger(index, 0)]);
                            break;
                        }
                    case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
                        i2 = i3;
                        delta.add(66, obtainStyledAttributes.getInt(index, 0));
                        break;
                    case 67:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, motion.mPathRotate), 67);
                        break;
                    case Token.ENUM_ID /* 68 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, propertySet.mProgress), 68);
                        break;
                    case Token.THISFN /* 69 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, 1.0f), 69);
                        break;
                    case Token.RETURN_RESULT /* 70 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, 1.0f), 70);
                        break;
                    case 71:
                        i2 = i3;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case Token.OBJECTLIT /* 72 */:
                        i2 = i3;
                        delta.add(72, obtainStyledAttributes.getInt(index, layout.mBarrierDirection));
                        break;
                    case Token.GET_REF /* 73 */:
                        i2 = i3;
                        delta.add(73, obtainStyledAttributes.getDimensionPixelSize(index, layout.mBarrierMargin));
                        break;
                    case Token.SET_REF /* 74 */:
                        i2 = i3;
                        delta.add(74, obtainStyledAttributes.getString(index));
                        break;
                    case Token.DEL_REF /* 75 */:
                        i2 = i3;
                        delta.add(75, obtainStyledAttributes.getBoolean(index, layout.mBarrierAllowsGoneWidgets));
                        break;
                    case Token.REF_CALL /* 76 */:
                        i2 = i3;
                        delta.add(76, obtainStyledAttributes.getInt(index, motion.mPathMotionArc));
                        break;
                    case Token.REF_SPECIAL /* 77 */:
                        i2 = i3;
                        delta.add(77, obtainStyledAttributes.getString(index));
                        break;
                    case Token.YIELD /* 78 */:
                        i2 = i3;
                        delta.add(78, obtainStyledAttributes.getInt(index, propertySet.mVisibilityMode));
                        break;
                    case Token.SUPER /* 79 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, motion.mMotionStagger), 79);
                        break;
                    case Token.STRICT_SETNAME /* 80 */:
                        i2 = i3;
                        delta.add(80, obtainStyledAttributes.getBoolean(index, layout.constrainedWidth));
                        break;
                    case Token.EXP /* 81 */:
                        i2 = i3;
                        delta.add(81, obtainStyledAttributes.getBoolean(index, layout.constrainedHeight));
                        break;
                    case Token.DEFAULTNAMESPACE /* 82 */:
                        i2 = i3;
                        delta.add(82, obtainStyledAttributes.getInteger(index, motion.mAnimateCircleAngleTo));
                        break;
                    case Token.ESCXMLATTR /* 83 */:
                        i2 = i3;
                        delta.add(83, lookupID(obtainStyledAttributes, index, transform.transformPivotTarget));
                        break;
                    case Token.ESCXMLTEXT /* 84 */:
                        i2 = i3;
                        delta.add(84, obtainStyledAttributes.getInteger(index, motion.mQuantizeMotionSteps));
                        break;
                    case Token.REF_MEMBER /* 85 */:
                        i2 = i3;
                        delta.add(obtainStyledAttributes.getFloat(index, motion.mQuantizeMotionPhase), 85);
                        break;
                    case Token.REF_NS_MEMBER /* 86 */:
                        i2 = i3;
                        int i5 = obtainStyledAttributes.peekValue(index).type;
                        if (i5 == 1) {
                            int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                            motion.mQuantizeInterpolatorID = resourceId2;
                            delta.add(89, resourceId2);
                            if (motion.mQuantizeInterpolatorID != -1) {
                                delta.add(88, -2);
                                break;
                            }
                        } else if (i5 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            motion.mQuantizeInterpolatorString = string;
                            delta.add(90, string);
                            if (motion.mQuantizeInterpolatorString.indexOf("/") > 0) {
                                int resourceId3 = obtainStyledAttributes.getResourceId(index, -1);
                                motion.mQuantizeInterpolatorID = resourceId3;
                                delta.add(89, resourceId3);
                                delta.add(88, -2);
                                break;
                            } else {
                                delta.add(88, -1);
                                break;
                            }
                        } else {
                            delta.add(88, obtainStyledAttributes.getInteger(index, motion.mQuantizeInterpolatorID));
                            break;
                        }
                        break;
                    case Token.REF_NAME /* 87 */:
                        i2 = i3;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        break;
                    case Token.RB /* 93 */:
                        i2 = i3;
                        delta.add(93, obtainStyledAttributes.getDimensionPixelSize(index, layout.baselineMargin));
                        break;
                    case Token.LC /* 94 */:
                        i2 = i3;
                        delta.add(94, obtainStyledAttributes.getDimensionPixelSize(index, layout.goneBaselineMargin));
                        break;
                    case Token.RC /* 95 */:
                        i2 = i3;
                        parseDimensionConstraints(delta, obtainStyledAttributes, index, 0);
                        break;
                    case Token.LP /* 96 */:
                        i2 = i3;
                        parseDimensionConstraints(delta, obtainStyledAttributes, index, 1);
                        break;
                    case Token.RP /* 97 */:
                        i2 = i3;
                        delta.add(97, obtainStyledAttributes.getInt(index, layout.mWrapBehavior));
                        break;
                    case Token.COMMA /* 98 */:
                        i2 = i3;
                        int i6 = MotionLayout.$r8$clinit;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            constraint.mViewId = obtainStyledAttributes.getResourceId(index, constraint.mViewId);
                            break;
                        }
                    case 99:
                        i2 = i3;
                        delta.add(99, obtainStyledAttributes.getBoolean(index, layout.guidelineUseRtl));
                        break;
                }
                i3 = i2 + 1;
                indexCount = i4;
            }
        } else {
            int i7 = 0;
            for (int indexCount2 = obtainStyledAttributes.getIndexCount(); i7 < indexCount2; indexCount2 = i) {
                int index2 = obtainStyledAttributes.getIndex(i7);
                if (index2 != 1 && 23 != index2) {
                    if (24 != index2) {
                        motion.getClass();
                        layout.getClass();
                        transform.getClass();
                    }
                }
                switch (sparseIntArray.get(index2)) {
                    case 1:
                        i = indexCount2;
                        layout.baselineToBaseline = lookupID(obtainStyledAttributes, index2, layout.baselineToBaseline);
                        continue;
                    case 2:
                        i = indexCount2;
                        layout.bottomMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.bottomMargin);
                        continue;
                    case 3:
                        i = indexCount2;
                        layout.bottomToBottom = lookupID(obtainStyledAttributes, index2, layout.bottomToBottom);
                        continue;
                    case 4:
                        i = indexCount2;
                        layout.bottomToTop = lookupID(obtainStyledAttributes, index2, layout.bottomToTop);
                        continue;
                    case 5:
                        i = indexCount2;
                        layout.dimensionRatio = obtainStyledAttributes.getString(index2);
                        continue;
                    case 6:
                        i = indexCount2;
                        layout.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index2, layout.editorAbsoluteX);
                        continue;
                    case 7:
                        i = indexCount2;
                        layout.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index2, layout.editorAbsoluteY);
                        continue;
                    case 8:
                        i = indexCount2;
                        layout.endMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.endMargin);
                        continue;
                    case 9:
                        i = indexCount2;
                        layout.endToEnd = lookupID(obtainStyledAttributes, index2, layout.endToEnd);
                        continue;
                    case 10:
                        i = indexCount2;
                        layout.endToStart = lookupID(obtainStyledAttributes, index2, layout.endToStart);
                        continue;
                    case 11:
                        i = indexCount2;
                        layout.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.goneBottomMargin);
                        continue;
                    case 12:
                        i = indexCount2;
                        layout.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.goneEndMargin);
                        continue;
                    case 13:
                        i = indexCount2;
                        layout.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.goneLeftMargin);
                        continue;
                    case 14:
                        i = indexCount2;
                        layout.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.goneRightMargin);
                        continue;
                    case 15:
                        i = indexCount2;
                        layout.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.goneStartMargin);
                        continue;
                    case 16:
                        i = indexCount2;
                        layout.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.goneTopMargin);
                        continue;
                    case 17:
                        i = indexCount2;
                        layout.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index2, layout.guideBegin);
                        continue;
                    case 18:
                        i = indexCount2;
                        layout.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index2, layout.guideEnd);
                        continue;
                    case 19:
                        i = indexCount2;
                        layout.guidePercent = obtainStyledAttributes.getFloat(index2, layout.guidePercent);
                        continue;
                    case 20:
                        i = indexCount2;
                        layout.horizontalBias = obtainStyledAttributes.getFloat(index2, layout.horizontalBias);
                        continue;
                    case 21:
                        i = indexCount2;
                        layout.mHeight = obtainStyledAttributes.getLayoutDimension(index2, layout.mHeight);
                        continue;
                    case 22:
                        i = indexCount2;
                        int i8 = obtainStyledAttributes.getInt(index2, propertySet.visibility);
                        propertySet.visibility = i8;
                        propertySet.visibility = iArr[i8];
                        continue;
                    case 23:
                        i = indexCount2;
                        layout.mWidth = obtainStyledAttributes.getLayoutDimension(index2, layout.mWidth);
                        continue;
                    case 24:
                        i = indexCount2;
                        layout.leftMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.leftMargin);
                        continue;
                    case 25:
                        i = indexCount2;
                        layout.leftToLeft = lookupID(obtainStyledAttributes, index2, layout.leftToLeft);
                        continue;
                    case 26:
                        i = indexCount2;
                        layout.leftToRight = lookupID(obtainStyledAttributes, index2, layout.leftToRight);
                        continue;
                    case 27:
                        i = indexCount2;
                        layout.orientation = obtainStyledAttributes.getInt(index2, layout.orientation);
                        continue;
                    case 28:
                        i = indexCount2;
                        layout.rightMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.rightMargin);
                        continue;
                    case 29:
                        i = indexCount2;
                        layout.rightToLeft = lookupID(obtainStyledAttributes, index2, layout.rightToLeft);
                        continue;
                    case 30:
                        i = indexCount2;
                        layout.rightToRight = lookupID(obtainStyledAttributes, index2, layout.rightToRight);
                        continue;
                    case 31:
                        i = indexCount2;
                        layout.startMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.startMargin);
                        continue;
                    case 32:
                        i = indexCount2;
                        layout.startToEnd = lookupID(obtainStyledAttributes, index2, layout.startToEnd);
                        continue;
                    case 33:
                        i = indexCount2;
                        layout.startToStart = lookupID(obtainStyledAttributes, index2, layout.startToStart);
                        continue;
                    case 34:
                        i = indexCount2;
                        layout.topMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.topMargin);
                        continue;
                    case 35:
                        i = indexCount2;
                        layout.topToBottom = lookupID(obtainStyledAttributes, index2, layout.topToBottom);
                        continue;
                    case 36:
                        i = indexCount2;
                        layout.topToTop = lookupID(obtainStyledAttributes, index2, layout.topToTop);
                        continue;
                    case Token.SETPROP /* 37 */:
                        i = indexCount2;
                        layout.verticalBias = obtainStyledAttributes.getFloat(index2, layout.verticalBias);
                        continue;
                    case 38:
                        i = indexCount2;
                        constraint.mViewId = obtainStyledAttributes.getResourceId(index2, constraint.mViewId);
                        continue;
                    case Token.GETELEM /* 39 */:
                        i = indexCount2;
                        layout.horizontalWeight = obtainStyledAttributes.getFloat(index2, layout.horizontalWeight);
                        continue;
                    case Token.GETELEM_SUPER /* 40 */:
                        i = indexCount2;
                        layout.verticalWeight = obtainStyledAttributes.getFloat(index2, layout.verticalWeight);
                        continue;
                    case Token.SETELEM /* 41 */:
                        i = indexCount2;
                        layout.horizontalChainStyle = obtainStyledAttributes.getInt(index2, layout.horizontalChainStyle);
                        continue;
                    case 42:
                        i = indexCount2;
                        layout.verticalChainStyle = obtainStyledAttributes.getInt(index2, layout.verticalChainStyle);
                        continue;
                    case Token.CALL /* 43 */:
                        i = indexCount2;
                        propertySet.alpha = obtainStyledAttributes.getFloat(index2, propertySet.alpha);
                        continue;
                    case Token.NAME /* 44 */:
                        i = indexCount2;
                        transform.applyElevation = true;
                        transform.elevation = obtainStyledAttributes.getDimension(index2, transform.elevation);
                        continue;
                    case Token.NUMBER /* 45 */:
                        i = indexCount2;
                        transform.rotationX = obtainStyledAttributes.getFloat(index2, transform.rotationX);
                        continue;
                    case Token.STRING /* 46 */:
                        i = indexCount2;
                        transform.rotationY = obtainStyledAttributes.getFloat(index2, transform.rotationY);
                        continue;
                    case Token.NULL /* 47 */:
                        i = indexCount2;
                        transform.scaleX = obtainStyledAttributes.getFloat(index2, transform.scaleX);
                        continue;
                    case Token.THIS /* 48 */:
                        i = indexCount2;
                        transform.scaleY = obtainStyledAttributes.getFloat(index2, transform.scaleY);
                        continue;
                    case Token.FALSE /* 49 */:
                        i = indexCount2;
                        transform.transformPivotX = obtainStyledAttributes.getDimension(index2, transform.transformPivotX);
                        continue;
                    case 50:
                        i = indexCount2;
                        transform.transformPivotY = obtainStyledAttributes.getDimension(index2, transform.transformPivotY);
                        continue;
                    case Token.SHEQ /* 51 */:
                        i = indexCount2;
                        transform.translationX = obtainStyledAttributes.getDimension(index2, transform.translationX);
                        continue;
                    case Token.SHNE /* 52 */:
                        i = indexCount2;
                        transform.translationY = obtainStyledAttributes.getDimension(index2, transform.translationY);
                        continue;
                    case Token.REGEXP /* 53 */:
                        i = indexCount2;
                        transform.translationZ = obtainStyledAttributes.getDimension(index2, transform.translationZ);
                        continue;
                    case Token.BINDNAME /* 54 */:
                        i = indexCount2;
                        layout.widthDefault = obtainStyledAttributes.getInt(index2, layout.widthDefault);
                        continue;
                    case Token.THROW /* 55 */:
                        i = indexCount2;
                        layout.heightDefault = obtainStyledAttributes.getInt(index2, layout.heightDefault);
                        continue;
                    case Token.RETHROW /* 56 */:
                        i = indexCount2;
                        layout.widthMax = obtainStyledAttributes.getDimensionPixelSize(index2, layout.widthMax);
                        continue;
                    case Token.IN /* 57 */:
                        i = indexCount2;
                        layout.heightMax = obtainStyledAttributes.getDimensionPixelSize(index2, layout.heightMax);
                        continue;
                    case Token.INSTANCEOF /* 58 */:
                        i = indexCount2;
                        layout.widthMin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.widthMin);
                        continue;
                    case Token.LOCAL_LOAD /* 59 */:
                        i = indexCount2;
                        layout.heightMin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.heightMin);
                        continue;
                    case Token.GETVAR /* 60 */:
                        i = indexCount2;
                        transform.rotation = obtainStyledAttributes.getFloat(index2, transform.rotation);
                        continue;
                    case Token.SETVAR /* 61 */:
                        i = indexCount2;
                        layout.circleConstraint = lookupID(obtainStyledAttributes, index2, layout.circleConstraint);
                        continue;
                    case Token.CATCH_SCOPE /* 62 */:
                        i = indexCount2;
                        layout.circleRadius = obtainStyledAttributes.getDimensionPixelSize(index2, layout.circleRadius);
                        continue;
                    case Token.ENUM_INIT_KEYS /* 63 */:
                        i = indexCount2;
                        layout.circleAngle = obtainStyledAttributes.getFloat(index2, layout.circleAngle);
                        continue;
                    case 64:
                        i = indexCount2;
                        motion.mAnimateRelativeTo = lookupID(obtainStyledAttributes, index2, motion.mAnimateRelativeTo);
                        continue;
                    case Token.ENUM_INIT_ARRAY /* 65 */:
                        i = indexCount2;
                        if (obtainStyledAttributes.peekValue(index2).type == 3) {
                            obtainStyledAttributes.getString(index2);
                            motion.getClass();
                            break;
                        } else {
                            String str = strArr[obtainStyledAttributes.getInteger(index2, 0)];
                            motion.getClass();
                            break;
                        }
                    case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
                        i = indexCount2;
                        obtainStyledAttributes.getInt(index2, 0);
                        motion.getClass();
                        continue;
                    case 67:
                        i = indexCount2;
                        motion.mPathRotate = obtainStyledAttributes.getFloat(index2, motion.mPathRotate);
                        break;
                    case Token.ENUM_ID /* 68 */:
                        i = indexCount2;
                        propertySet.mProgress = obtainStyledAttributes.getFloat(index2, propertySet.mProgress);
                        break;
                    case Token.THISFN /* 69 */:
                        i = indexCount2;
                        layout.widthPercent = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case Token.RETURN_RESULT /* 70 */:
                        i = indexCount2;
                        layout.heightPercent = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case 71:
                        i = indexCount2;
                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                        break;
                    case Token.OBJECTLIT /* 72 */:
                        i = indexCount2;
                        layout.mBarrierDirection = obtainStyledAttributes.getInt(index2, layout.mBarrierDirection);
                        break;
                    case Token.GET_REF /* 73 */:
                        i = indexCount2;
                        layout.mBarrierMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.mBarrierMargin);
                        break;
                    case Token.SET_REF /* 74 */:
                        i = indexCount2;
                        layout.mReferenceIdString = obtainStyledAttributes.getString(index2);
                        break;
                    case Token.DEL_REF /* 75 */:
                        i = indexCount2;
                        layout.mBarrierAllowsGoneWidgets = obtainStyledAttributes.getBoolean(index2, layout.mBarrierAllowsGoneWidgets);
                        break;
                    case Token.REF_CALL /* 76 */:
                        i = indexCount2;
                        motion.mPathMotionArc = obtainStyledAttributes.getInt(index2, motion.mPathMotionArc);
                        break;
                    case Token.REF_SPECIAL /* 77 */:
                        i = indexCount2;
                        layout.mConstraintTag = obtainStyledAttributes.getString(index2);
                        break;
                    case Token.YIELD /* 78 */:
                        i = indexCount2;
                        propertySet.mVisibilityMode = obtainStyledAttributes.getInt(index2, propertySet.mVisibilityMode);
                        break;
                    case Token.SUPER /* 79 */:
                        i = indexCount2;
                        motion.mMotionStagger = obtainStyledAttributes.getFloat(index2, motion.mMotionStagger);
                        break;
                    case Token.STRICT_SETNAME /* 80 */:
                        i = indexCount2;
                        layout.constrainedWidth = obtainStyledAttributes.getBoolean(index2, layout.constrainedWidth);
                        break;
                    case Token.EXP /* 81 */:
                        i = indexCount2;
                        layout.constrainedHeight = obtainStyledAttributes.getBoolean(index2, layout.constrainedHeight);
                        break;
                    case Token.DEFAULTNAMESPACE /* 82 */:
                        i = indexCount2;
                        motion.mAnimateCircleAngleTo = obtainStyledAttributes.getInteger(index2, motion.mAnimateCircleAngleTo);
                        break;
                    case Token.ESCXMLATTR /* 83 */:
                        i = indexCount2;
                        transform.transformPivotTarget = lookupID(obtainStyledAttributes, index2, transform.transformPivotTarget);
                        break;
                    case Token.ESCXMLTEXT /* 84 */:
                        i = indexCount2;
                        motion.mQuantizeMotionSteps = obtainStyledAttributes.getInteger(index2, motion.mQuantizeMotionSteps);
                        break;
                    case Token.REF_MEMBER /* 85 */:
                        i = indexCount2;
                        motion.mQuantizeMotionPhase = obtainStyledAttributes.getFloat(index2, motion.mQuantizeMotionPhase);
                        break;
                    case Token.REF_NS_MEMBER /* 86 */:
                        i = indexCount2;
                        int i9 = obtainStyledAttributes.peekValue(index2).type;
                        if (i9 == 1) {
                            motion.mQuantizeInterpolatorID = obtainStyledAttributes.getResourceId(index2, -1);
                            break;
                        } else if (i9 == 3) {
                            String string2 = obtainStyledAttributes.getString(index2);
                            motion.mQuantizeInterpolatorString = string2;
                            if (string2.indexOf("/") > 0) {
                                motion.mQuantizeInterpolatorID = obtainStyledAttributes.getResourceId(index2, -1);
                                break;
                            }
                        } else {
                            obtainStyledAttributes.getInteger(index2, motion.mQuantizeInterpolatorID);
                            break;
                        }
                        break;
                    case Token.REF_NAME /* 87 */:
                        i = indexCount2;
                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index2) + "   " + sparseIntArray.get(index2));
                        break;
                    case Token.REF_NS_NAME /* 88 */:
                    case 89:
                    case Token.TRY /* 90 */:
                    default:
                        StringBuilder sb2 = new StringBuilder("Unknown attribute 0x");
                        i = indexCount2;
                        sb2.append(Integer.toHexString(index2));
                        sb2.append("   ");
                        sb2.append(sparseIntArray.get(index2));
                        Log.w("ConstraintSet", sb2.toString());
                        break;
                    case Token.SEMI /* 91 */:
                        i = indexCount2;
                        layout.baselineToTop = lookupID(obtainStyledAttributes, index2, layout.baselineToTop);
                        break;
                    case Token.LB /* 92 */:
                        i = indexCount2;
                        layout.baselineToBottom = lookupID(obtainStyledAttributes, index2, layout.baselineToBottom);
                        break;
                    case Token.RB /* 93 */:
                        i = indexCount2;
                        layout.baselineMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.baselineMargin);
                        break;
                    case Token.LC /* 94 */:
                        i = indexCount2;
                        layout.goneBaselineMargin = obtainStyledAttributes.getDimensionPixelSize(index2, layout.goneBaselineMargin);
                        break;
                    case Token.RC /* 95 */:
                        i = indexCount2;
                        parseDimensionConstraints(layout, obtainStyledAttributes, index2, 0);
                        continue;
                    case Token.LP /* 96 */:
                        i = indexCount2;
                        parseDimensionConstraints(layout, obtainStyledAttributes, index2, 1);
                        break;
                    case Token.RP /* 97 */:
                        i = indexCount2;
                        layout.mWrapBehavior = obtainStyledAttributes.getInt(index2, layout.mWrapBehavior);
                        break;
                }
                i7++;
            }
            if (layout.mReferenceIdString != null) {
                layout.mReferenceIds = null;
            }
        }
        obtainStyledAttributes.recycle();
        return constraint;
    }

    public static int lookupID(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parseDimensionConstraints(java.lang.Object r7, android.content.res.TypedArray r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.parseDimensionConstraints(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    public static void parseDimensionRatioString(ConstraintLayout.LayoutParams layoutParams, String str) {
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i = -1;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                i = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
                r2 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 < 0 || indexOf2 >= length - 1) {
                    String substring2 = str.substring(r2);
                    if (substring2.length() > 0) {
                        Float.parseFloat(substring2);
                    }
                } else {
                    String substring3 = str.substring(r2, indexOf2);
                    String substring4 = str.substring(indexOf2 + 1);
                    if (substring3.length() > 0 && substring4.length() > 0) {
                        float parseFloat = Float.parseFloat(substring3);
                        float parseFloat2 = Float.parseFloat(substring4);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (i == 1) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        layoutParams.dimensionRatio = str;
    }

    public static String sideToString(int i) {
        switch (i) {
            case 1:
                return TtmlNode.LEFT;
            case 2:
                return TtmlNode.RIGHT;
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return TtmlNode.START;
            case 7:
                return TtmlNode.END;
            default:
                return "undefined";
        }
    }

    public final void applyToInternal(ConstraintLayout constraintLayout) {
        HashSet hashSet;
        int i;
        HashMap hashMap;
        String str;
        ConstraintSet constraintSet = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap2 = constraintSet.mConstraints;
        HashSet hashSet2 = new HashSet(hashMap2.keySet());
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!hashMap2.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    str = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    str = "UNKNOWN";
                }
                sb.append(str);
                Log.w("ConstraintSet", sb.toString());
            } else {
                if (constraintSet.mForceId && id == -1) {
                    Node$$ExternalSyntheticBUOutline0.m811m("All children of ConstraintLayout must have ids to use ConstraintSet");
                    return;
                }
                if (id != -1) {
                    if (hashMap2.containsKey(Integer.valueOf(id))) {
                        hashSet2.remove(Integer.valueOf(id));
                        Constraint constraint = (Constraint) hashMap2.get(Integer.valueOf(id));
                        if (constraint != null) {
                            PropertySet propertySet = constraint.propertySet;
                            Layout layout = constraint.layout;
                            Transform transform = constraint.transform;
                            if (childAt instanceof Barrier) {
                                layout.mHelperType = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(layout.mBarrierDirection);
                                barrier.setMargin(layout.mBarrierMargin);
                                barrier.setAllowsGoneWidget(layout.mBarrierAllowsGoneWidgets);
                                int[] iArr = layout.mReferenceIds;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str2 = layout.mReferenceIdString;
                                    if (str2 != null) {
                                        int[] convertReferenceString = convertReferenceString(barrier, str2);
                                        layout.mReferenceIds = convertReferenceString;
                                        barrier.setReferencedIds(convertReferenceString);
                                    }
                                }
                            }
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            layoutParams.validate();
                            constraint.applyTo(layoutParams);
                            HashMap hashMap3 = constraint.mCustomConstraints;
                            Class<?> cls = childAt.getClass();
                            for (String str3 : hashMap3.keySet()) {
                                ConstraintAttribute constraintAttribute = (ConstraintAttribute) hashMap3.get(str3);
                                HashSet hashSet3 = hashSet2;
                                String m = !constraintAttribute.mMethod ? Owner.CC.m("set", str3) : str3;
                                int i3 = i2;
                                try {
                                    int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(constraintAttribute.mType);
                                    Class<?> cls2 = Float.TYPE;
                                    Class<?> cls3 = Integer.TYPE;
                                    switch (ordinal) {
                                        case 0:
                                            hashMap = hashMap3;
                                            cls.getMethod(m, cls3).invoke(childAt, Integer.valueOf(constraintAttribute.mIntegerValue));
                                            break;
                                        case 1:
                                            hashMap = hashMap3;
                                            cls.getMethod(m, cls2).invoke(childAt, Float.valueOf(constraintAttribute.mFloatValue));
                                            break;
                                        case 2:
                                            hashMap = hashMap3;
                                            cls.getMethod(m, cls3).invoke(childAt, Integer.valueOf(constraintAttribute.mColorValue));
                                            break;
                                        case 3:
                                            hashMap = hashMap3;
                                            Method method = cls.getMethod(m, Drawable.class);
                                            ColorDrawable colorDrawable = new ColorDrawable();
                                            colorDrawable.setColor(constraintAttribute.mColorValue);
                                            method.invoke(childAt, colorDrawable);
                                            break;
                                        case 4:
                                            hashMap = hashMap3;
                                            cls.getMethod(m, CharSequence.class).invoke(childAt, constraintAttribute.mStringValue);
                                            break;
                                        case 5:
                                            hashMap = hashMap3;
                                            cls.getMethod(m, Boolean.TYPE).invoke(childAt, Boolean.valueOf(constraintAttribute.mBooleanValue));
                                            break;
                                        case 6:
                                            hashMap = hashMap3;
                                            cls.getMethod(m, cls2).invoke(childAt, Float.valueOf(constraintAttribute.mFloatValue));
                                            break;
                                        case 7:
                                            hashMap = hashMap3;
                                            try {
                                                cls.getMethod(m, cls3).invoke(childAt, Integer.valueOf(constraintAttribute.mIntegerValue));
                                            } catch (IllegalAccessException e) {
                                                e = e;
                                                StringBuilder m180m = Modifier.CC.m180m(" Custom Attribute \"", str3, "\" not found on ");
                                                m180m.append(cls.getName());
                                                Log.e("TransitionLayout", m180m.toString(), e);
                                                hashSet2 = hashSet3;
                                                i2 = i3;
                                                hashMap3 = hashMap;
                                            } catch (NoSuchMethodException e2) {
                                                e = e2;
                                                Log.e("TransitionLayout", cls.getName() + " must have a method " + m, e);
                                                hashSet2 = hashSet3;
                                                i2 = i3;
                                                hashMap3 = hashMap;
                                            } catch (InvocationTargetException e3) {
                                                e = e3;
                                                StringBuilder m180m2 = Modifier.CC.m180m(" Custom Attribute \"", str3, "\" not found on ");
                                                m180m2.append(cls.getName());
                                                Log.e("TransitionLayout", m180m2.toString(), e);
                                                hashSet2 = hashSet3;
                                                i2 = i3;
                                                hashMap3 = hashMap;
                                            }
                                        default:
                                            hashMap = hashMap3;
                                            break;
                                    }
                                } catch (IllegalAccessException e4) {
                                    e = e4;
                                    hashMap = hashMap3;
                                } catch (NoSuchMethodException e5) {
                                    e = e5;
                                    hashMap = hashMap3;
                                } catch (InvocationTargetException e6) {
                                    e = e6;
                                    hashMap = hashMap3;
                                }
                                hashSet2 = hashSet3;
                                i2 = i3;
                                hashMap3 = hashMap;
                            }
                            hashSet = hashSet2;
                            i = i2;
                            childAt.setLayoutParams(layoutParams);
                            if (propertySet.mVisibilityMode == 0) {
                                childAt.setVisibility(propertySet.visibility);
                            }
                            childAt.setAlpha(propertySet.alpha);
                            childAt.setRotation(transform.rotation);
                            childAt.setRotationX(transform.rotationX);
                            childAt.setRotationY(transform.rotationY);
                            childAt.setScaleX(transform.scaleX);
                            childAt.setScaleY(transform.scaleY);
                            if (transform.transformPivotTarget != -1) {
                                if (((View) childAt.getParent()).findViewById(transform.transformPivotTarget) != null) {
                                    float bottom = (r0.getBottom() + r0.getTop()) / 2.0f;
                                    float right = (r0.getRight() + r0.getLeft()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(right - childAt.getLeft());
                                        childAt.setPivotY(bottom - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(transform.transformPivotX)) {
                                    childAt.setPivotX(transform.transformPivotX);
                                }
                                if (!Float.isNaN(transform.transformPivotY)) {
                                    childAt.setPivotY(transform.transformPivotY);
                                }
                            }
                            childAt.setTranslationX(transform.translationX);
                            childAt.setTranslationY(transform.translationY);
                            childAt.setTranslationZ(transform.translationZ);
                            if (transform.applyElevation) {
                                childAt.setElevation(transform.elevation);
                            }
                        }
                    } else {
                        hashSet = hashSet2;
                        i = i2;
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                    i2 = i + 1;
                    constraintSet = this;
                    hashSet2 = hashSet;
                }
            }
            hashSet = hashSet2;
            i = i2;
            i2 = i + 1;
            constraintSet = this;
            hashSet2 = hashSet;
        }
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            Constraint constraint2 = (Constraint) hashMap2.get(num);
            if (constraint2 != null) {
                Layout layout2 = constraint2.layout;
                if (layout2.mHelperType == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    int[] iArr2 = layout2.mReferenceIds;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str4 = layout2.mReferenceIdString;
                        if (str4 != null) {
                            int[] convertReferenceString2 = convertReferenceString(barrier2, str4);
                            layout2.mReferenceIds = convertReferenceString2;
                            barrier2.setReferencedIds(convertReferenceString2);
                        }
                    }
                    barrier2.setType(layout2.mBarrierDirection);
                    barrier2.setMargin(layout2.mBarrierMargin);
                    ConstraintLayout.LayoutParams generateDefaultLayoutParams = ConstraintLayout.generateDefaultLayoutParams();
                    barrier2.validateParams();
                    constraint2.applyTo(generateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, generateDefaultLayoutParams);
                }
                if (layout2.mIsGuideline) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.LayoutParams generateDefaultLayoutParams2 = ConstraintLayout.generateDefaultLayoutParams();
                    constraint2.applyTo(generateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, generateDefaultLayoutParams2);
                }
            }
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            constraintLayout.getChildAt(i4);
        }
    }

    public final void clone(ConstraintLayout constraintLayout) {
        int i;
        HashMap hashMap;
        int i2;
        ConstraintSet constraintSet = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap2 = constraintSet.mConstraints;
        hashMap2.clear();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = constraintLayout.getChildAt(i3);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (constraintSet.mForceId && id == -1) {
                Node$$ExternalSyntheticBUOutline0.m811m("All children of ConstraintLayout must have ids to use ConstraintSet");
                return;
            }
            if (!hashMap2.containsKey(Integer.valueOf(id))) {
                hashMap2.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = (Constraint) hashMap2.get(Integer.valueOf(id));
            if (constraint == null) {
                i = childCount;
                hashMap = hashMap2;
                i2 = i3;
            } else {
                PropertySet propertySet = constraint.propertySet;
                Layout layout = constraint.layout;
                Transform transform = constraint.transform;
                i = childCount;
                HashMap hashMap3 = new HashMap();
                hashMap = hashMap2;
                Class<?> cls = childAt.getClass();
                i2 = i3;
                HashMap hashMap4 = constraintSet.mSavedAttributes;
                for (String str : hashMap4.keySet()) {
                    ConstraintAttribute constraintAttribute = (ConstraintAttribute) hashMap4.get(str);
                    HashMap hashMap5 = hashMap4;
                    try {
                        if (str.equals("BackgroundColor")) {
                            hashMap3.put(str, new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                        } else {
                            hashMap3.put(str, new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                        }
                    } catch (IllegalAccessException e) {
                        StringBuilder m180m = Modifier.CC.m180m(" Custom Attribute \"", str, "\" not found on ");
                        m180m.append(cls.getName());
                        Log.e("TransitionLayout", m180m.toString(), e);
                    } catch (NoSuchMethodException e2) {
                        Log.e("TransitionLayout", cls.getName() + " must have a method " + str, e2);
                    } catch (InvocationTargetException e3) {
                        StringBuilder m180m2 = Modifier.CC.m180m(" Custom Attribute \"", str, "\" not found on ");
                        m180m2.append(cls.getName());
                        Log.e("TransitionLayout", m180m2.toString(), e3);
                    }
                    hashMap4 = hashMap5;
                }
                constraint.mCustomConstraints = hashMap3;
                constraint.mViewId = id;
                layout.leftToLeft = layoutParams.leftToLeft;
                layout.leftToRight = layoutParams.leftToRight;
                layout.rightToLeft = layoutParams.rightToLeft;
                layout.rightToRight = layoutParams.rightToRight;
                layout.topToTop = layoutParams.topToTop;
                layout.topToBottom = layoutParams.topToBottom;
                layout.bottomToTop = layoutParams.bottomToTop;
                layout.bottomToBottom = layoutParams.bottomToBottom;
                layout.baselineToBaseline = layoutParams.baselineToBaseline;
                layout.baselineToTop = layoutParams.baselineToTop;
                layout.baselineToBottom = layoutParams.baselineToBottom;
                layout.startToEnd = layoutParams.startToEnd;
                layout.startToStart = layoutParams.startToStart;
                layout.endToStart = layoutParams.endToStart;
                layout.endToEnd = layoutParams.endToEnd;
                layout.horizontalBias = layoutParams.horizontalBias;
                layout.verticalBias = layoutParams.verticalBias;
                layout.dimensionRatio = layoutParams.dimensionRatio;
                layout.circleConstraint = layoutParams.circleConstraint;
                layout.circleRadius = layoutParams.circleRadius;
                layout.circleAngle = layoutParams.circleAngle;
                layout.editorAbsoluteX = layoutParams.editorAbsoluteX;
                layout.editorAbsoluteY = layoutParams.editorAbsoluteY;
                layout.orientation = layoutParams.orientation;
                layout.guidePercent = layoutParams.guidePercent;
                layout.guideBegin = layoutParams.guideBegin;
                layout.guideEnd = layoutParams.guideEnd;
                layout.mWidth = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                layout.mHeight = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                layout.leftMargin = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                layout.rightMargin = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                layout.topMargin = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                layout.bottomMargin = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                layout.baselineMargin = layoutParams.baselineMargin;
                layout.verticalWeight = layoutParams.verticalWeight;
                layout.horizontalWeight = layoutParams.horizontalWeight;
                layout.verticalChainStyle = layoutParams.verticalChainStyle;
                layout.horizontalChainStyle = layoutParams.horizontalChainStyle;
                layout.constrainedWidth = layoutParams.constrainedWidth;
                layout.constrainedHeight = layoutParams.constrainedHeight;
                layout.widthDefault = layoutParams.matchConstraintDefaultWidth;
                layout.heightDefault = layoutParams.matchConstraintDefaultHeight;
                layout.widthMax = layoutParams.matchConstraintMaxWidth;
                layout.heightMax = layoutParams.matchConstraintMaxHeight;
                layout.widthMin = layoutParams.matchConstraintMinWidth;
                layout.heightMin = layoutParams.matchConstraintMinHeight;
                layout.widthPercent = layoutParams.matchConstraintPercentWidth;
                layout.heightPercent = layoutParams.matchConstraintPercentHeight;
                layout.mConstraintTag = layoutParams.constraintTag;
                layout.goneTopMargin = layoutParams.goneTopMargin;
                layout.goneBottomMargin = layoutParams.goneBottomMargin;
                layout.goneLeftMargin = layoutParams.goneLeftMargin;
                layout.goneRightMargin = layoutParams.goneRightMargin;
                layout.goneStartMargin = layoutParams.goneStartMargin;
                layout.goneEndMargin = layoutParams.goneEndMargin;
                layout.goneBaselineMargin = layoutParams.goneBaselineMargin;
                layout.mWrapBehavior = layoutParams.wrapBehaviorInParent;
                layout.endMargin = layoutParams.getMarginEnd();
                layout.startMargin = layoutParams.getMarginStart();
                propertySet.visibility = childAt.getVisibility();
                propertySet.alpha = childAt.getAlpha();
                transform.rotation = childAt.getRotation();
                transform.rotationX = childAt.getRotationX();
                transform.rotationY = childAt.getRotationY();
                transform.scaleX = childAt.getScaleX();
                transform.scaleY = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    transform.transformPivotX = pivotX;
                    transform.transformPivotY = pivotY;
                }
                transform.translationX = childAt.getTranslationX();
                transform.translationY = childAt.getTranslationY();
                transform.translationZ = childAt.getTranslationZ();
                if (transform.applyElevation) {
                    transform.elevation = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                    layout.mReferenceIds = barrier.getReferencedIds();
                    layout.mBarrierDirection = barrier.getType();
                    layout.mBarrierMargin = barrier.getMargin();
                }
            }
            i3 = i2 + 1;
            constraintSet = this;
            childCount = i;
            hashMap2 = hashMap;
        }
    }

    public final void load(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 2) {
                    String name = xml.getName();
                    Constraint fillFromAttributeList = fillFromAttributeList(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        fillFromAttributeList.layout.mIsGuideline = true;
                    }
                    this.mConstraints.put(Integer.valueOf(fillFromAttributeList.mViewId), fillFromAttributeList);
                }
            }
        } catch (IOException e) {
            Log.e("ConstraintSet", "Error parsing resource: " + i, e);
        } catch (XmlPullParserException e2) {
            Log.e("ConstraintSet", "Error parsing resource: " + i, e2);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Constraint {
        public final Layout layout;
        public HashMap mCustomConstraints;
        public int mViewId;
        public final Motion motion;
        public final PropertySet propertySet;
        public final Transform transform;

        public Constraint() {
            PropertySet propertySet = new PropertySet();
            propertySet.visibility = 0;
            propertySet.mVisibilityMode = 0;
            propertySet.alpha = 1.0f;
            propertySet.mProgress = Float.NaN;
            this.propertySet = propertySet;
            Motion motion = new Motion();
            motion.mAnimateRelativeTo = -1;
            motion.mAnimateCircleAngleTo = 0;
            motion.mPathMotionArc = -1;
            motion.mMotionStagger = Float.NaN;
            motion.mPathRotate = Float.NaN;
            motion.mQuantizeMotionPhase = Float.NaN;
            motion.mQuantizeMotionSteps = -1;
            motion.mQuantizeInterpolatorString = null;
            motion.mQuantizeInterpolatorID = -1;
            this.motion = motion;
            Layout layout = new Layout();
            layout.mIsGuideline = false;
            layout.guideBegin = -1;
            layout.guideEnd = -1;
            layout.guidePercent = -1.0f;
            layout.guidelineUseRtl = true;
            layout.leftToLeft = -1;
            layout.leftToRight = -1;
            layout.rightToLeft = -1;
            layout.rightToRight = -1;
            layout.topToTop = -1;
            layout.topToBottom = -1;
            layout.bottomToTop = -1;
            layout.bottomToBottom = -1;
            layout.baselineToBaseline = -1;
            layout.baselineToTop = -1;
            layout.baselineToBottom = -1;
            layout.startToEnd = -1;
            layout.startToStart = -1;
            layout.endToStart = -1;
            layout.endToEnd = -1;
            layout.horizontalBias = 0.5f;
            layout.verticalBias = 0.5f;
            layout.dimensionRatio = null;
            layout.circleConstraint = -1;
            layout.circleRadius = 0;
            layout.circleAngle = 0.0f;
            layout.editorAbsoluteX = -1;
            layout.editorAbsoluteY = -1;
            layout.orientation = -1;
            layout.leftMargin = 0;
            layout.rightMargin = 0;
            layout.topMargin = 0;
            layout.bottomMargin = 0;
            layout.endMargin = 0;
            layout.startMargin = 0;
            layout.baselineMargin = 0;
            layout.goneLeftMargin = Integer.MIN_VALUE;
            layout.goneTopMargin = Integer.MIN_VALUE;
            layout.goneRightMargin = Integer.MIN_VALUE;
            layout.goneBottomMargin = Integer.MIN_VALUE;
            layout.goneEndMargin = Integer.MIN_VALUE;
            layout.goneStartMargin = Integer.MIN_VALUE;
            layout.goneBaselineMargin = Integer.MIN_VALUE;
            layout.verticalWeight = -1.0f;
            layout.horizontalWeight = -1.0f;
            layout.horizontalChainStyle = 0;
            layout.verticalChainStyle = 0;
            layout.widthDefault = 0;
            layout.heightDefault = 0;
            layout.widthMax = 0;
            layout.heightMax = 0;
            layout.widthMin = 0;
            layout.heightMin = 0;
            layout.widthPercent = 1.0f;
            layout.heightPercent = 1.0f;
            layout.mBarrierDirection = -1;
            layout.mBarrierMargin = 0;
            layout.mHelperType = -1;
            layout.constrainedWidth = false;
            layout.constrainedHeight = false;
            layout.mBarrierAllowsGoneWidgets = true;
            layout.mWrapBehavior = 0;
            this.layout = layout;
            Transform transform = new Transform();
            transform.rotation = 0.0f;
            transform.rotationX = 0.0f;
            transform.rotationY = 0.0f;
            transform.scaleX = 1.0f;
            transform.scaleY = 1.0f;
            transform.transformPivotX = Float.NaN;
            transform.transformPivotY = Float.NaN;
            transform.transformPivotTarget = -1;
            transform.translationX = 0.0f;
            transform.translationY = 0.0f;
            transform.translationZ = 0.0f;
            transform.applyElevation = false;
            transform.elevation = 0.0f;
            this.transform = transform;
            this.mCustomConstraints = new HashMap();
        }

        public final void applyTo(ConstraintLayout.LayoutParams layoutParams) {
            Layout layout = this.layout;
            layoutParams.leftToLeft = layout.leftToLeft;
            layoutParams.leftToRight = layout.leftToRight;
            layoutParams.rightToLeft = layout.rightToLeft;
            layoutParams.rightToRight = layout.rightToRight;
            layoutParams.topToTop = layout.topToTop;
            layoutParams.topToBottom = layout.topToBottom;
            layoutParams.bottomToTop = layout.bottomToTop;
            layoutParams.bottomToBottom = layout.bottomToBottom;
            layoutParams.baselineToBaseline = layout.baselineToBaseline;
            layoutParams.baselineToTop = layout.baselineToTop;
            layoutParams.baselineToBottom = layout.baselineToBottom;
            layoutParams.startToEnd = layout.startToEnd;
            layoutParams.startToStart = layout.startToStart;
            layoutParams.endToStart = layout.endToStart;
            layoutParams.endToEnd = layout.endToEnd;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = layout.leftMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = layout.rightMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = layout.topMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = layout.bottomMargin;
            layoutParams.goneStartMargin = layout.goneStartMargin;
            layoutParams.goneEndMargin = layout.goneEndMargin;
            layoutParams.goneTopMargin = layout.goneTopMargin;
            layoutParams.goneBottomMargin = layout.goneBottomMargin;
            layoutParams.horizontalBias = layout.horizontalBias;
            layoutParams.verticalBias = layout.verticalBias;
            layoutParams.circleConstraint = layout.circleConstraint;
            layoutParams.circleRadius = layout.circleRadius;
            layoutParams.circleAngle = layout.circleAngle;
            layoutParams.dimensionRatio = layout.dimensionRatio;
            layoutParams.editorAbsoluteX = layout.editorAbsoluteX;
            layoutParams.editorAbsoluteY = layout.editorAbsoluteY;
            layoutParams.verticalWeight = layout.verticalWeight;
            layoutParams.horizontalWeight = layout.horizontalWeight;
            layoutParams.verticalChainStyle = layout.verticalChainStyle;
            layoutParams.horizontalChainStyle = layout.horizontalChainStyle;
            layoutParams.constrainedWidth = layout.constrainedWidth;
            layoutParams.constrainedHeight = layout.constrainedHeight;
            layoutParams.matchConstraintDefaultWidth = layout.widthDefault;
            layoutParams.matchConstraintDefaultHeight = layout.heightDefault;
            layoutParams.matchConstraintMaxWidth = layout.widthMax;
            layoutParams.matchConstraintMaxHeight = layout.heightMax;
            layoutParams.matchConstraintMinWidth = layout.widthMin;
            layoutParams.matchConstraintMinHeight = layout.heightMin;
            layoutParams.matchConstraintPercentWidth = layout.widthPercent;
            layoutParams.matchConstraintPercentHeight = layout.heightPercent;
            layoutParams.orientation = layout.orientation;
            layoutParams.guidePercent = layout.guidePercent;
            layoutParams.guideBegin = layout.guideBegin;
            layoutParams.guideEnd = layout.guideEnd;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = layout.mWidth;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = layout.mHeight;
            String str = layout.mConstraintTag;
            if (str != null) {
                layoutParams.constraintTag = str;
            }
            layoutParams.wrapBehaviorInParent = layout.mWrapBehavior;
            layoutParams.setMarginStart(layout.startMargin);
            layoutParams.setMarginEnd(layout.endMargin);
            layoutParams.validate();
        }

        public final Object clone() {
            Constraint constraint = new Constraint();
            Layout layout = constraint.layout;
            layout.getClass();
            Layout layout2 = this.layout;
            layout.mIsGuideline = layout2.mIsGuideline;
            layout.mWidth = layout2.mWidth;
            layout.mHeight = layout2.mHeight;
            layout.guideBegin = layout2.guideBegin;
            layout.guideEnd = layout2.guideEnd;
            layout.guidePercent = layout2.guidePercent;
            layout.guidelineUseRtl = layout2.guidelineUseRtl;
            layout.leftToLeft = layout2.leftToLeft;
            layout.leftToRight = layout2.leftToRight;
            layout.rightToLeft = layout2.rightToLeft;
            layout.rightToRight = layout2.rightToRight;
            layout.topToTop = layout2.topToTop;
            layout.topToBottom = layout2.topToBottom;
            layout.bottomToTop = layout2.bottomToTop;
            layout.bottomToBottom = layout2.bottomToBottom;
            layout.baselineToBaseline = layout2.baselineToBaseline;
            layout.baselineToTop = layout2.baselineToTop;
            layout.baselineToBottom = layout2.baselineToBottom;
            layout.startToEnd = layout2.startToEnd;
            layout.startToStart = layout2.startToStart;
            layout.endToStart = layout2.endToStart;
            layout.endToEnd = layout2.endToEnd;
            layout.horizontalBias = layout2.horizontalBias;
            layout.verticalBias = layout2.verticalBias;
            layout.dimensionRatio = layout2.dimensionRatio;
            layout.circleConstraint = layout2.circleConstraint;
            layout.circleRadius = layout2.circleRadius;
            layout.circleAngle = layout2.circleAngle;
            layout.editorAbsoluteX = layout2.editorAbsoluteX;
            layout.editorAbsoluteY = layout2.editorAbsoluteY;
            layout.orientation = layout2.orientation;
            layout.leftMargin = layout2.leftMargin;
            layout.rightMargin = layout2.rightMargin;
            layout.topMargin = layout2.topMargin;
            layout.bottomMargin = layout2.bottomMargin;
            layout.endMargin = layout2.endMargin;
            layout.startMargin = layout2.startMargin;
            layout.baselineMargin = layout2.baselineMargin;
            layout.goneLeftMargin = layout2.goneLeftMargin;
            layout.goneTopMargin = layout2.goneTopMargin;
            layout.goneRightMargin = layout2.goneRightMargin;
            layout.goneBottomMargin = layout2.goneBottomMargin;
            layout.goneEndMargin = layout2.goneEndMargin;
            layout.goneStartMargin = layout2.goneStartMargin;
            layout.goneBaselineMargin = layout2.goneBaselineMargin;
            layout.verticalWeight = layout2.verticalWeight;
            layout.horizontalWeight = layout2.horizontalWeight;
            layout.horizontalChainStyle = layout2.horizontalChainStyle;
            layout.verticalChainStyle = layout2.verticalChainStyle;
            layout.widthDefault = layout2.widthDefault;
            layout.heightDefault = layout2.heightDefault;
            layout.widthMax = layout2.widthMax;
            layout.heightMax = layout2.heightMax;
            layout.widthMin = layout2.widthMin;
            layout.heightMin = layout2.heightMin;
            layout.widthPercent = layout2.widthPercent;
            layout.heightPercent = layout2.heightPercent;
            layout.mBarrierDirection = layout2.mBarrierDirection;
            layout.mBarrierMargin = layout2.mBarrierMargin;
            layout.mHelperType = layout2.mHelperType;
            layout.mConstraintTag = layout2.mConstraintTag;
            int[] iArr = layout2.mReferenceIds;
            if (iArr == null || layout2.mReferenceIdString != null) {
                layout.mReferenceIds = null;
            } else {
                layout.mReferenceIds = Arrays.copyOf(iArr, iArr.length);
            }
            layout.mReferenceIdString = layout2.mReferenceIdString;
            layout.constrainedWidth = layout2.constrainedWidth;
            layout.constrainedHeight = layout2.constrainedHeight;
            layout.mBarrierAllowsGoneWidgets = layout2.mBarrierAllowsGoneWidgets;
            layout.mWrapBehavior = layout2.mWrapBehavior;
            Motion motion = constraint.motion;
            motion.getClass();
            Motion motion2 = this.motion;
            motion2.getClass();
            motion.mAnimateRelativeTo = motion2.mAnimateRelativeTo;
            motion.mPathMotionArc = motion2.mPathMotionArc;
            motion.mPathRotate = motion2.mPathRotate;
            motion.mMotionStagger = motion2.mMotionStagger;
            PropertySet propertySet = this.propertySet;
            int i = propertySet.visibility;
            PropertySet propertySet2 = constraint.propertySet;
            propertySet2.visibility = i;
            propertySet2.alpha = propertySet.alpha;
            propertySet2.mProgress = propertySet.mProgress;
            propertySet2.mVisibilityMode = propertySet.mVisibilityMode;
            Transform transform = constraint.transform;
            transform.getClass();
            Transform transform2 = this.transform;
            transform2.getClass();
            transform.rotation = transform2.rotation;
            transform.rotationX = transform2.rotationX;
            transform.rotationY = transform2.rotationY;
            transform.scaleX = transform2.scaleX;
            transform.scaleY = transform2.scaleY;
            transform.transformPivotX = transform2.transformPivotX;
            transform.transformPivotY = transform2.transformPivotY;
            transform.transformPivotTarget = transform2.transformPivotTarget;
            transform.translationX = transform2.translationX;
            transform.translationY = transform2.translationY;
            transform.translationZ = transform2.translationZ;
            transform.applyElevation = transform2.applyElevation;
            transform.elevation = transform2.elevation;
            constraint.mViewId = this.mViewId;
            return constraint;
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class Delta {
            public int mCountBoolean;
            public int mCountFloat;
            public int mCountInt;
            public int mCountString;
            public int[] mTypeBoolean;
            public int[] mTypeFloat;
            public int[] mTypeInt;
            public int[] mTypeString;
            public boolean[] mValueBoolean;
            public float[] mValueFloat;
            public int[] mValueInt;
            public String[] mValueString;

            public final void add(int i, String str) {
                int i2 = this.mCountString;
                int[] iArr = this.mTypeString;
                if (i2 >= iArr.length) {
                    this.mTypeString = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.mValueString;
                    this.mValueString = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.mTypeString;
                int i3 = this.mCountString;
                iArr2[i3] = i;
                String[] strArr2 = this.mValueString;
                this.mCountString = i3 + 1;
                strArr2[i3] = str;
            }

            public final void add(float f, int i) {
                int i2 = this.mCountFloat;
                int[] iArr = this.mTypeFloat;
                if (i2 >= iArr.length) {
                    this.mTypeFloat = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.mValueFloat;
                    this.mValueFloat = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.mTypeFloat;
                int i3 = this.mCountFloat;
                iArr2[i3] = i;
                float[] fArr2 = this.mValueFloat;
                this.mCountFloat = i3 + 1;
                fArr2[i3] = f;
            }

            public final void add(int i, int i2) {
                int i3 = this.mCountInt;
                int[] iArr = this.mTypeInt;
                if (i3 >= iArr.length) {
                    this.mTypeInt = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.mValueInt;
                    this.mValueInt = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.mTypeInt;
                int i4 = this.mCountInt;
                iArr3[i4] = i;
                int[] iArr4 = this.mValueInt;
                this.mCountInt = i4 + 1;
                iArr4[i4] = i2;
            }

            public final void add(int i, boolean z) {
                int i2 = this.mCountBoolean;
                int[] iArr = this.mTypeBoolean;
                if (i2 >= iArr.length) {
                    this.mTypeBoolean = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.mValueBoolean;
                    this.mValueBoolean = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.mTypeBoolean;
                int i3 = this.mCountBoolean;
                iArr2[i3] = i;
                boolean[] zArr2 = this.mValueBoolean;
                this.mCountBoolean = i3 + 1;
                zArr2[i3] = z;
            }
        }
    }
}
