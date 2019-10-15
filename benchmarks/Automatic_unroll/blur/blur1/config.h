/***********  blur config  ************/
#define born_x 4
#define born_y 4
#define born_c 4

// If this is defined, print 10 array elements only
#define PRINT_ONLY_10 1

#define NB_TESTS 10

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
