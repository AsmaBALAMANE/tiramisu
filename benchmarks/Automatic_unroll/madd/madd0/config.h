/***********  mmm config  ************/
#define MAX_RAND 200
#define BIG 32768 // 2 pow 15
#define MIDDLE 1024 //  2 pow 10
#define LITTLE 64// 2 pow 8
#define LITTLE1 256
#define alpha 1
#define beta 1
#define gama 7

/***********  blur config  ************/
#define born_x 4
#define born_y 4
#define born_c 4
/***********  gris config  ************/
#define red 0.2125
#define green 0.7154
#define blue 0.0721

/***********  Conv config  ************/
#define LARGE_DATA_SET	1
#define MEDIUM_DATA_SET	0
#define SMALL_DATA_SET	0

#if LARGE_DATA_SET
	#define BATCH_SIZE 64
#elif MEDIUM_DATA_SET
	#define BATCH_SIZE 32
#elif SMALL_DATA_SET
	#define BATCH_SIZE 8
#endif

// Size of one data dimension
// Data is NxNx16

#if LARGE_DATA_SET
	#define N 64
#elif MEDIUM_DATA_SET
	#define N 32
#elif SMALL_DATA_SET
	#define N 8

#endif

// Number of features in the input
//#define FIn 64
#define FIn 16
// Number of features in the output
#define FOut 16
// Size of convolution filter (KxK)
//#define K 5
#define K 8
/*#define C_N0 N+K
#define C_N1 N-K   
#define C_N2 N-K-K*/
// If this is defined, print 10 array elements only
#define PRINT_ONLY_10 1

#define NB_TESTS 5

double median(std::vector<std::chrono::duration<double, std::milli>> scores)
{
    double median;
    size_t size = scores.size();

    sort(scores.begin(), scores.end());

    if (size % 2 == 0)
    {
        median = (scores[size / 2 - 1].count() + scores[size / 2].count()) / 2;
    }
    else
    {
        median = scores[size / 2].count();
    }

    return median;
}
